; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_delete_kernel_client.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_delete_kernel_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_delete_kernel_client(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @in_interrupt()
  %6 = call i64 @snd_BUG_ON(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.snd_seq_client* @clientptr(i32 %12)
  store %struct.snd_seq_client* %13, %struct.snd_seq_client** %4, align 8
  %14 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %15 = icmp eq %struct.snd_seq_client* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %21 = call i32 @seq_free_client(%struct.snd_seq_client* %20)
  %22 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %23 = call i32 @kfree(%struct.snd_seq_client* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %16, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local %struct.snd_seq_client* @clientptr(i32) #1

declare dso_local i32 @seq_free_client(%struct.snd_seq_client*) #1

declare dso_local i32 @kfree(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
