; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_write_unlock_ip.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_write_unlock_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @write_unlock_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_unlock_ip(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.net*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %9, align 8
  store i64 4, i64* %10, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.net* @netns(%struct.file* %14)
  store %struct.net* %15, %struct.net** %12, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %55

32:                                               ; preds = %21
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @qword_get(i8** %6, i8* %34, i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.net*, %struct.net** %12, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @rpc_pton(%struct.net* %42, i8* %43, i64 %44, %struct.sockaddr* %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %41
  %53 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %54 = call i32 @nlmsvc_unlock_all_by_ip(%struct.sockaddr* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %49, %38, %29, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.net* @netns(%struct.file*) #1

declare dso_local i64 @qword_get(i8**, i8*, i64) #1

declare dso_local i64 @rpc_pton(%struct.net*, i8*, i64, %struct.sockaddr*, i64) #1

declare dso_local i32 @nlmsvc_unlock_all_by_ip(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
