; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tt_common_entry = type { i32 }

@BATADV_TT_CLIENT_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @batadv_tt_local_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tt_local_valid(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.batadv_tt_common_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.batadv_tt_common_entry*
  store %struct.batadv_tt_common_entry* %10, %struct.batadv_tt_common_entry** %8, align 8
  %11 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %8, align 8
  %12 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BATADV_TT_CLIENT_NEW, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %8, align 8
  %23 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %18
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
