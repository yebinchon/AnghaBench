; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_save_orig_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_save_orig_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32, i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, i8*, i64)* @batadv_tt_save_orig_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_save_orig_buffer(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %10 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load i64, i64* %8, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %16 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @kfree(i64 %17)
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %20 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i64 @kmalloc(i64 %21, i32 %22)
  %24 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %25 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %27 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %14
  %31 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %32 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @memcpy(i64 %33, i8* %34, i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %39 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %30, %14
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %43 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
