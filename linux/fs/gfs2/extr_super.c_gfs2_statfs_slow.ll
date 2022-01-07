; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_slow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_statfs_change_host = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_holder = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_ASYNC = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_statfs_change_host*)* @gfs2_statfs_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_statfs_slow(%struct.gfs2_sbd* %0, %struct.gfs2_statfs_change_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_statfs_change_host*, align 8
  %6 = alloca %struct.gfs2_rgrpd*, align 8
  %7 = alloca %struct.gfs2_holder*, align 8
  %8 = alloca %struct.gfs2_holder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.gfs2_statfs_change_host* %1, %struct.gfs2_statfs_change_host** %5, align 8
  store i32 64, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %5, align 8
  %16 = call i32 @memset(%struct.gfs2_statfs_change_host* %15, i32 0, i32 4)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.gfs2_holder* @kmalloc_array(i32 %17, i32 4, i32 %18)
  store %struct.gfs2_holder* %19, %struct.gfs2_holder** %7, align 8
  %20 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %21 = icmp ne %struct.gfs2_holder* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %126

25:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %31, i64 %33
  %35 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %41 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_first(%struct.gfs2_sbd* %40)
  store %struct.gfs2_rgrpd* %41, %struct.gfs2_rgrpd** %6, align 8
  br label %42

42:                                               ; preds = %120, %39
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %113, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %116

47:                                               ; preds = %43
  %48 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %48, i64 %50
  store %struct.gfs2_holder* %51, %struct.gfs2_holder** %8, align 8
  %52 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %53 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %47
  %56 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %57 = call i64 @gfs2_glock_poll(%struct.gfs2_holder* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %61 = call i32 @gfs2_glock_wait(%struct.gfs2_holder* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %66 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %65)
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %12, align 4
  br label %82

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %73 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.gfs2_rgrpd* @gfs2_glock2rgrp(i32 %74)
  store %struct.gfs2_rgrpd* %75, %struct.gfs2_rgrpd** %14, align 8
  %76 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %77 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %5, align 8
  %78 = call i32 @statfs_slow_fill(%struct.gfs2_rgrpd* %76, %struct.gfs2_statfs_change_host* %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %71, %68
  %80 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %81 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %80)
  br label %82

82:                                               ; preds = %79, %64
  br label %83

83:                                               ; preds = %82, %55, %47
  %84 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %85 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %105

88:                                               ; preds = %83
  %89 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %90 = icmp ne %struct.gfs2_rgrpd* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %96 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @LM_ST_SHARED, align 4
  %99 = load i32, i32* @GL_ASYNC, align 4
  %100 = load %struct.gfs2_holder*, %struct.gfs2_holder** %8, align 8
  %101 = call i32 @gfs2_glock_nq_init(i32 %97, i32 %98, i32 %99, %struct.gfs2_holder* %100)
  store i32 %101, i32* %12, align 4
  %102 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %103 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd* %102)
  store %struct.gfs2_rgrpd* %103, %struct.gfs2_rgrpd** %6, align 8
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %94, %91, %88
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i32, i32* @current, align 4
  %107 = call i64 @signal_pending(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @ERESTARTSYS, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %43

116:                                              ; preds = %43
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %122

120:                                              ; preds = %116
  %121 = call i32 (...) @yield()
  br label %42

122:                                              ; preds = %119
  %123 = load %struct.gfs2_holder*, %struct.gfs2_holder** %7, align 8
  %124 = call i32 @kfree(%struct.gfs2_holder* %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %22
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.gfs2_statfs_change_host*, i32, i32) #1

declare dso_local %struct.gfs2_holder* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_rgrpd_get_first(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i64 @gfs2_glock_poll(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_wait(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_glock2rgrp(i32) #1

declare dso_local i32 @statfs_slow_fill(%struct.gfs2_rgrpd*, %struct.gfs2_statfs_change_host*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @kfree(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
