; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_mle_equal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_mle_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_master_list_entry = type { i32, i32, %struct.dlm_ctxt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_master_list_entry*, i8*, i32)* @dlm_mle_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_mle_equal(%struct.dlm_ctxt* %0, %struct.dlm_master_list_entry* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_master_list_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_master_list_entry* %1, %struct.dlm_master_list_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %11 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %12 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %11, i32 0, i32 2
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %12, align 8
  %14 = icmp ne %struct.dlm_ctxt* %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %32

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %19 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %7, align 8
  %25 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @memcmp(i8* %23, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %16
  store i32 0, i32* %5, align 4
  br label %32

31:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %30, %15
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
