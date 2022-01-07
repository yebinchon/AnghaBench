; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_..internal.h_nfs_match_open_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_..internal.h_nfs_match_open_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_open_context*, %struct.nfs_open_context*)* @nfs_match_open_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_match_open_context(%struct.nfs_open_context* %0, %struct.nfs_open_context* %1) #0 {
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca %struct.nfs_open_context*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %4, align 8
  %5 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @cred_fscmp(i32 %7, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br label %21

21:                                               ; preds = %13, %2
  %22 = phi i1 [ false, %2 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @cred_fscmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
