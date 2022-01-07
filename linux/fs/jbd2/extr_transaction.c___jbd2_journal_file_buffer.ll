; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___jbd2_journal_file_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___jbd2_journal_file_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }

@BJ_Types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__jbd2_journal_file_buffer(%struct.journal_head* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.journal_head*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.journal_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.journal_head** null, %struct.journal_head*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %11 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %9, align 8
  %12 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %14 = call i32 @jbd_is_locked_bh_state(%struct.buffer_head* %13)
  %15 = call i32 @J_ASSERT_JH(%struct.journal_head* %12, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @assert_spin_locked(i32* %19)
  %21 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %22 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %23 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BJ_Types, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @J_ASSERT_JH(%struct.journal_head* %21, i32 %27)
  %29 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %30 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %31 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = icmp eq %struct.TYPE_5__* %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %37 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br label %40

40:                                               ; preds = %35, %3
  %41 = phi i1 [ true, %3 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @J_ASSERT_JH(%struct.journal_head* %29, i32 %42)
  %44 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %45 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %50 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %145

55:                                               ; preds = %48, %40
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 131
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 132
  br i1 %66, label %67, label %84

67:                                               ; preds = %64, %61, %58, %55
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i64 @buffer_dirty(%struct.buffer_head* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %73 = call i32 @warn_dirty_buffer(%struct.buffer_head* %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %76 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %80 = call i64 @test_clear_buffer_jbddirty(%struct.buffer_head* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %78
  br label %84

84:                                               ; preds = %83, %64
  %85 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %86 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %91 = call i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head* %90)
  br label %95

92:                                               ; preds = %84
  %93 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %94 = call i32 @jbd2_journal_grab_journal_head(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %98 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %97, i32 0, i32 3
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %98, align 8
  %99 = load i32, i32* %6, align 4
  switch i32 %99, label %133 [
    i32 130, label %100
    i32 131, label %117
    i32 132, label %124
    i32 128, label %127
    i32 129, label %130
  ]

100:                                              ; preds = %95
  %101 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %102 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %103 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @J_ASSERT_JH(%struct.journal_head* %101, i32 %107)
  %109 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %110 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %111 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @J_ASSERT_JH(%struct.journal_head* %109, i32 %115)
  br label %145

117:                                              ; preds = %95
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  store %struct.journal_head** %123, %struct.journal_head*** %7, align 8
  br label %133

124:                                              ; preds = %95
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store %struct.journal_head** %126, %struct.journal_head*** %7, align 8
  br label %133

127:                                              ; preds = %95
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store %struct.journal_head** %129, %struct.journal_head*** %7, align 8
  br label %133

130:                                              ; preds = %95
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store %struct.journal_head** %132, %struct.journal_head*** %7, align 8
  br label %133

133:                                              ; preds = %95, %130, %127, %124, %117
  %134 = load %struct.journal_head**, %struct.journal_head*** %7, align 8
  %135 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %136 = call i32 @__blist_add_buffer(%struct.journal_head** %134, %struct.journal_head* %135)
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %139 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %144 = call i32 @set_buffer_jbddirty(%struct.buffer_head* %143)
  br label %145

145:                                              ; preds = %54, %100, %142, %133
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @jbd_is_locked_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @warn_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @jbd2_journal_grab_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @__blist_add_buffer(%struct.journal_head**, %struct.journal_head*) #1

declare dso_local i32 @set_buffer_jbddirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
