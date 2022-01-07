; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_client_ioctl_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_client_ioctl_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_client_ioctl_unlock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_client*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %4)
  store %struct.snd_seq_client* %5, %struct.snd_seq_client** %3, align 8
  %6 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %7 = icmp ne %struct.snd_seq_client* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %15 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %18 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %17)
  %19 = load %struct.snd_seq_client*, %struct.snd_seq_client** %3, align 8
  %20 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
