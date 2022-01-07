; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_journal_unmap_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_journal_unmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.buffer_head = type { i32* }
%struct.journal_head = type { i64, i32*, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not on any transaction: zap\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"checkpointed: add to BJ_Forget\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"give to committing trans\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"on committing transaction\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"on running transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.buffer_head*, i32)* @journal_unmap_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_unmap_buffer(%struct.TYPE_3__* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.journal_head*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %12 = call i32 @BUFFER_TRACE(%struct.buffer_head* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = call i32 @buffer_jbd(%struct.buffer_head* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %165

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @write_lock(i32* %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = call %struct.journal_head* @jbd2_journal_grab_journal_head(%struct.buffer_head* %26)
  store %struct.journal_head* %27, %struct.journal_head** %9, align 8
  %28 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %29 = icmp ne %struct.journal_head* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %156

31:                                               ; preds = %17
  %32 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %33 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %83

37:                                               ; preds = %31
  %38 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %39 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %44 = call i32 @JBUFFER_TRACE(%struct.journal_head* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %151

45:                                               ; preds = %37
  %46 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %47 = call i32 @buffer_dirty(%struct.buffer_head* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %51 = call i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head* %50)
  br label %151

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %59 = call i32 @JBUFFER_TRACE(%struct.journal_head* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @__dispose_buffer(%struct.journal_head* %60, i32* %63)
  store i32 %64, i32* %10, align 4
  br label %151

65:                                               ; preds = %52
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %72 = call i32 @JBUFFER_TRACE(%struct.journal_head* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @__dispose_buffer(%struct.journal_head* %73, i32* %76)
  store i32 %77, i32* %10, align 4
  br label %151

78:                                               ; preds = %65
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = call i32 @clear_buffer_jbddirty(%struct.buffer_head* %79)
  %81 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %82 = call i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head* %81)
  br label %151

83:                                               ; preds = %31
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %84, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %83
  %90 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %91 = call i32 @JBUFFER_TRACE(%struct.journal_head* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %96 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %101 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = call i32 @write_unlock(i32* %103)
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %188

107:                                              ; preds = %89
  %108 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %109 = call i32 @set_buffer_freed(%struct.buffer_head* %108)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %116 = call i64 @buffer_jbddirty(%struct.buffer_head* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %123 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %122, i32 0, i32 1
  store i32* %121, i32** %123, align 8
  br label %124

124:                                              ; preds = %118, %114, %107
  %125 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %126 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %125)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %131 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %130)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = call i32 @write_unlock(i32* %133)
  store i32 0, i32* %4, align 4
  br label %188

135:                                              ; preds = %83
  %136 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %137, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @J_ASSERT_JH(%struct.journal_head* %136, i32 %142)
  %144 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %145 = call i32 @JBUFFER_TRACE(%struct.journal_head* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @__dispose_buffer(%struct.journal_head* %146, i32* %147)
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150, %78, %70, %57, %49, %42
  %152 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %153 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %155 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %154)
  br label %156

156:                                              ; preds = %151, %30
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = call i32 @spin_unlock(i32* %158)
  %160 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %161 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %160)
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = call i32 @write_unlock(i32* %163)
  br label %165

165:                                              ; preds = %156, %16
  %166 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %167 = call i32 @clear_buffer_dirty(%struct.buffer_head* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %169 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %170 = call i64 @buffer_jbddirty(%struct.buffer_head* %169)
  %171 = icmp ne i64 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @J_ASSERT_BH(%struct.buffer_head* %168, i32 %173)
  %175 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %176 = call i32 @clear_buffer_mapped(%struct.buffer_head* %175)
  %177 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %178 = call i32 @clear_buffer_req(%struct.buffer_head* %177)
  %179 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %180 = call i32 @clear_buffer_new(%struct.buffer_head* %179)
  %181 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %182 = call i32 @clear_buffer_delay(%struct.buffer_head* %181)
  %183 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %184 = call i32 @clear_buffer_unwritten(%struct.buffer_head* %183)
  %185 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %186 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %185, i32 0, i32 0
  store i32* null, i32** %186, align 8
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %165, %124, %94
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.journal_head* @jbd2_journal_grab_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head*) #1

declare dso_local i32 @__dispose_buffer(%struct.journal_head*, i32*) #1

declare dso_local i32 @clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @jbd2_journal_put_journal_head(%struct.journal_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @set_buffer_freed(%struct.buffer_head*) #1

declare dso_local i64 @buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_unwritten(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
