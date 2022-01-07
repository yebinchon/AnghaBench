; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_is_hash_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_is_hash_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }

@UBIFS_DENT_KEY = common dso_local global i32 0, align 4
@UBIFS_XENT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*)* @is_hash_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hash_key(%struct.ubifs_info* %0, %union.ubifs_key* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %union.ubifs_key*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %4, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = load %union.ubifs_key*, %union.ubifs_key** %4, align 8
  %8 = call i32 @key_type(%struct.ubifs_info* %6, %union.ubifs_key* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @UBIFS_DENT_KEY, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UBIFS_XENT_KEY, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
