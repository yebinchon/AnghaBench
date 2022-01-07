; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_avail_orphs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_avail_orphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32 }

@UBIFS_ORPH_NODE_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @avail_orphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avail_orphs(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = sub nsw i32 %8, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UBIFS_ORPH_NODE_SZ, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = mul i64 %19, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* @UBIFS_ORPH_NODE_SZ, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %1
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @UBIFS_ORPH_NODE_SZ, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %1
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
