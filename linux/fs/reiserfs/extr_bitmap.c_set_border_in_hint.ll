; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_set_border_in_hint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_set_border_in_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.TYPE_6__*)* @set_border_in_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_border_in_hint(%struct.super_block* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call i32 @SB_BLOCK_COUNT(%struct.super_block* %6)
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_7__* @REISERFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %7, %12
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr i8, i8* %21, i64 -1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local %struct.TYPE_7__* @REISERFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
