; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_allow_current_process.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_allow_current_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32, i32, i64 }
%struct.cred = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_allow_current_process(%struct.fuse_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  %5 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %11 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @current_in_userns(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %15, %struct.cred** %4, align 8
  %16 = load %struct.cred*, %struct.cred** %4, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @uid_eq(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %14
  %25 = load %struct.cred*, %struct.cred** %4, align 8
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %29 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @uid_eq(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %24
  %34 = load %struct.cred*, %struct.cred** %4, align 8
  %35 = getelementptr inbounds %struct.cred, %struct.cred* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %38 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @uid_eq(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %33
  %43 = load %struct.cred*, %struct.cred** %4, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @gid_eq(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %42
  %52 = load %struct.cred*, %struct.cred** %4, align 8
  %53 = getelementptr inbounds %struct.cred, %struct.cred* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %56 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @gid_eq(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.cred*, %struct.cred** %4, align 8
  %62 = getelementptr inbounds %struct.cred, %struct.cred* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %65 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @gid_eq(i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %71

70:                                               ; preds = %60, %51, %42, %33, %24, %14
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %9
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @current_in_userns(i32) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
