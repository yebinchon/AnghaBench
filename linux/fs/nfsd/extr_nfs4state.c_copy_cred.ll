; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_copy_cred.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_copy_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_cred = type { i64, i32, i32, i32, i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_cred*, %struct.svc_cred*)* @copy_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_cred(%struct.svc_cred* %0, %struct.svc_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_cred*, align 8
  %5 = alloca %struct.svc_cred*, align 8
  store %struct.svc_cred* %0, %struct.svc_cred** %4, align 8
  store %struct.svc_cred* %1, %struct.svc_cred** %5, align 8
  %6 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %7 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %6, i32 0, i32 7
  %8 = load i8*, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kstrdup(i8* %8, i32 %9)
  %11 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %12 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %11, i32 0, i32 7
  store i8* %10, i8** %12, align 8
  %13 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %14 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %13, i32 0, i32 6
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kstrdup(i8* %15, i32 %16)
  %18 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %19 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %21 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %20, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kstrdup(i8* %22, i32 %23)
  %25 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %26 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %28 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %27, i32 0, i32 7
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %33 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %32, i32 0, i32 7
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %31, %2
  %37 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %38 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %37, i32 0, i32 6
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %43 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41, %36
  %47 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %48 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %47, i32 0, i32 5
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %53 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %41, %31
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %99

59:                                               ; preds = %51, %46
  %60 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %61 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %64 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %66 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %69 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %71 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %74 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %76 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %79 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %81 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @get_group_info(i32 %82)
  %84 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %85 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %88 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %90 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %59
  %94 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %95 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @gss_mech_get(i64 %96)
  br label %98

98:                                               ; preds = %93, %59
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %56
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @get_group_info(i32) #1

declare dso_local i32 @gss_mech_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
