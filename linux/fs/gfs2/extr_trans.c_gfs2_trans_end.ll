; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_trans_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_trans_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TR_ALLOCED = common dso_local global i32 0, align 4
@TR_TOUCHED = common dso_local global i32 0, align 4
@TR_ATTACHED = common dso_local global i32 0, align 4
@SB_SYNCHRONOUS = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_TRANS_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_trans_end(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.gfs2_trans*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.gfs2_trans*, %struct.gfs2_trans** %7, align 8
  store %struct.gfs2_trans* %8, %struct.gfs2_trans** %3, align 8
  %9 = load i32, i32* @TR_ALLOCED, align 4
  %10 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %10, i32 0, i32 7
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.gfs2_trans* null, %struct.gfs2_trans** %14, align 8
  %15 = load i32, i32* @TR_TOUCHED, align 4
  %16 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %16, i32 0, i32 7
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %1
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %22 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gfs2_log_release(%struct.gfs2_sbd* %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %30 = call i32 @kfree(%struct.gfs2_trans* %29)
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @sb_end_intwrite(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %28, %20
  br label %118

36:                                               ; preds = %1
  %37 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %41 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %4, align 8
  %44 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %4, align 8
  %49 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %50 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %4, align 8
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %36
  %61 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %62 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %65 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  br label %68

68:                                               ; preds = %60, %36
  %69 = phi i1 [ false, %36 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @gfs2_assert_withdraw(%struct.gfs2_sbd* %54, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %75 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %76 = call i32 @gfs2_print_trans(%struct.gfs2_sbd* %74, %struct.gfs2_trans* %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %79 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %80 = call i32 @gfs2_log_commit(%struct.gfs2_sbd* %78, %struct.gfs2_trans* %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i32, i32* @TR_ATTACHED, align 4
  %85 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %86 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %85, i32 0, i32 7
  %87 = call i32 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load %struct.gfs2_trans*, %struct.gfs2_trans** %3, align 8
  %91 = call i32 @kfree(%struct.gfs2_trans* %90)
  br label %92

92:                                               ; preds = %89, %83, %77
  %93 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %94 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %93, i32 0, i32 1
  %95 = call i32 @up_read(i32* %94)
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %106 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %107 = load i32, i32* @GFS2_LFC_TRANS_END, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %105, i32* null, i32 %108)
  br label %110

110:                                              ; preds = %104, %92
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %115 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = call i32 @sb_end_intwrite(%struct.TYPE_3__* %116)
  br label %118

118:                                              ; preds = %35, %113, %110
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_log_release(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @kfree(%struct.gfs2_trans*) #1

declare dso_local i32 @sb_end_intwrite(%struct.TYPE_3__*) #1

declare dso_local i64 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_print_trans(%struct.gfs2_sbd*, %struct.gfs2_trans*) #1

declare dso_local i32 @gfs2_log_commit(%struct.gfs2_sbd*, %struct.gfs2_trans*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
