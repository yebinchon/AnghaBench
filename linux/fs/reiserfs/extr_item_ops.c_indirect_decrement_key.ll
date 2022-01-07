; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_indirect_decrement_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_indirect_decrement_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_key = type { i32 }

@TYPE_STAT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_key*)* @indirect_decrement_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indirect_decrement_key(%struct.cpu_key* %0) #0 {
  %2 = alloca %struct.cpu_key*, align 8
  store %struct.cpu_key* %0, %struct.cpu_key** %2, align 8
  %3 = load %struct.cpu_key*, %struct.cpu_key** %2, align 8
  %4 = call i32 @cpu_key_k_offset_dec(%struct.cpu_key* %3)
  %5 = load %struct.cpu_key*, %struct.cpu_key** %2, align 8
  %6 = call i64 @cpu_key_k_offset(%struct.cpu_key* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.cpu_key*, %struct.cpu_key** %2, align 8
  %10 = load i32, i32* @TYPE_STAT_DATA, align 4
  %11 = call i32 @set_cpu_key_k_type(%struct.cpu_key* %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @cpu_key_k_offset_dec(%struct.cpu_key*) #1

declare dso_local i64 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @set_cpu_key_k_type(%struct.cpu_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
