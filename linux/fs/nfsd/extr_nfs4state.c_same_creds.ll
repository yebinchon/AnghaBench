; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_same_creds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_same_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_cred = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_cred*, %struct.svc_cred*)* @same_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_creds(%struct.svc_cred* %0, %struct.svc_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_cred*, align 8
  %5 = alloca %struct.svc_cred*, align 8
  store %struct.svc_cred* %0, %struct.svc_cred** %4, align 8
  store %struct.svc_cred* %1, %struct.svc_cred** %5, align 8
  %6 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %7 = call i64 @is_gss_cred(%struct.svc_cred* %6)
  %8 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %9 = call i64 @is_gss_cred(%struct.svc_cred* %8)
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %13 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %16 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @uid_eq(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %11
  %21 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %22 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %25 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gid_eq(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %31 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %34 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @groups_equal(i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29, %20, %11, %2
  store i32 0, i32* %3, align 4
  br label %69

39:                                               ; preds = %29
  %40 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %41 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %44 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %69

48:                                               ; preds = %39
  %49 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %50 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %55 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %48
  store i32 0, i32* %3, align 4
  br label %69

59:                                               ; preds = %53
  %60 = load %struct.svc_cred*, %struct.svc_cred** %4, align 8
  %61 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %64 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @strcmp(i64 %62, i64 %65)
  %67 = icmp eq i64 0, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %58, %47, %38
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @is_gss_cred(%struct.svc_cred*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @groups_equal(i32, i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
