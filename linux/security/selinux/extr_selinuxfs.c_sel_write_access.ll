; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_write_access.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_write_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.selinux_fs_info = type { %struct.selinux_state* }
%struct.selinux_state = type { i32 }
%struct.av_decision = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.selinux_fs_info* }

@selinux_state = common dso_local global i32 0, align 4
@SECINITSID_SECURITY = common dso_local global i32 0, align 4
@SECCLASS_SECURITY = common dso_local global i32 0, align 4
@SECURITY__COMPUTE_AV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s %s %hu\00", align 1
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%x %x %x %x %u %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @sel_write_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_write_access(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.selinux_fs_info*, align 8
  %8 = alloca %struct.selinux_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.av_decision, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call %struct.TYPE_4__* @file_inode(%struct.file* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %20, align 8
  store %struct.selinux_fs_info* %21, %struct.selinux_fs_info** %7, align 8
  %22 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %7, align 8
  %23 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %22, i32 0, i32 0
  %24 = load %struct.selinux_state*, %struct.selinux_state** %23, align 8
  store %struct.selinux_state* %24, %struct.selinux_state** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %25 = call i32 (...) @current_sid()
  %26 = load i32, i32* @SECINITSID_SECURITY, align 4
  %27 = load i32, i32* @SECCLASS_SECURITY, align 4
  %28 = load i32, i32* @SECURITY__COMPUTE_AV, align 4
  %29 = call i32 @avc_has_perm(i32* @selinux_state, i32 %25, i32 %26, i32 %27, i32 %28, i32* null)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %97

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i64 %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %97

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %15, align 4
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kzalloc(i64 %47, i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %97

53:                                               ; preds = %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @sscanf(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58, i32* %13)
  %60 = icmp ne i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %97

62:                                               ; preds = %53
  %63 = load %struct.selinux_state*, %struct.selinux_state** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @security_context_str_to_sid(%struct.selinux_state* %63, i8* %64, i32* %11, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %97

70:                                               ; preds = %62
  %71 = load %struct.selinux_state*, %struct.selinux_state** %8, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @security_context_str_to_sid(%struct.selinux_state* %71, i8* %72, i32* %12, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %97

78:                                               ; preds = %70
  %79 = load %struct.selinux_state*, %struct.selinux_state** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @security_compute_av_user(%struct.selinux_state* %79, i32 %80, i32 %81, i32 %82, %struct.av_decision* %14)
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @SIMPLE_TRANSACTION_LIMIT, align 4
  %86 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %14, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %14, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %14, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %14, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %14, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @scnprintf(i8* %84, i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 -1, i32 %89, i32 %91, i32 %93, i32 %95)
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %78, %77, %69, %61, %52, %42, %32
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @kfree(i8* %98)
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @kfree(i8* %100)
  %102 = load i32, i32* %15, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @security_context_str_to_sid(%struct.selinux_state*, i8*, i32*, i32) #1

declare dso_local i32 @security_compute_av_user(%struct.selinux_state*, i32, i32, i32, %struct.av_decision*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
