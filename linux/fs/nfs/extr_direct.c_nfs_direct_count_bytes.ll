; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_count_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_count_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_direct_req = type { i64, i64, i64 }
%struct.nfs_pgio_header = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_direct_req*, %struct.nfs_pgio_header*)* @nfs_direct_count_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_count_bytes(%struct.nfs_direct_req* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca %struct.nfs_direct_req*, align 8
  %4 = alloca %struct.nfs_pgio_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nfs_direct_req* %0, %struct.nfs_direct_req** %3, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %4, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @nfs_direct_handle_truncated(%struct.nfs_direct_req* %26, %struct.nfs_pgio_header* %27, i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %35, %25
  %40 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %41 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %48 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @nfs_direct_handle_truncated(%struct.nfs_direct_req*, %struct.nfs_pgio_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
