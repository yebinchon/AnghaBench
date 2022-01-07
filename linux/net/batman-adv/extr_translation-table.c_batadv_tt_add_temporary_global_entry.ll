; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_add_temporary_global_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_add_temporary_global_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32, i32 }

@BATADV_TT_CLIENT_TEMP = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Added temporary global client (addr: %pM, vid: %d, orig: %pM)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_tt_add_temporary_global_entry(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %10 = load i8*, i8** %8, align 8
  %11 = call i64 @batadv_bla_is_loopdetect_mac(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

14:                                               ; preds = %4
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %16 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i16, i16* %9, align 2
  %19 = load i32, i32* @BATADV_TT_CLIENT_TEMP, align 4
  %20 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %21 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %20, i32 0, i32 1
  %22 = call i32 @atomic_read(i32* %21)
  %23 = call i32 @batadv_tt_global_add(%struct.batadv_priv* %15, %struct.batadv_orig_node* %16, i8* %17, i16 zeroext %18, i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %36

26:                                               ; preds = %14
  %27 = load i32, i32* @BATADV_DBG_TT, align 4
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i16, i16* %9, align 2
  %31 = call i32 @batadv_print_vid(i16 zeroext %30)
  %32 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %33 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @batadv_dbg(i32 %27, %struct.batadv_priv* %28, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31, i32 %34)
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %26, %25, %13
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @batadv_bla_is_loopdetect_mac(i8*) #1

declare dso_local i32 @batadv_tt_global_add(%struct.batadv_priv*, %struct.batadv_orig_node*, i8*, i16 zeroext, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i8*, i32, i32) #1

declare dso_local i32 @batadv_print_vid(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
