; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_snd_ff_transaction_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_snd_ff_transaction_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@transmit_midi0_msg = common dso_local global i32 0, align 4
@transmit_midi1_msg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ff_transaction_register(%struct.snd_ff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 65535
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @allocate_own_address(%struct.snd_ff* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %22, %6
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %27
  %33 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %34 = call i32 @snd_ff_transaction_reregister(%struct.snd_ff* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %32
  %40 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %41 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* @transmit_midi0_msg, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %47 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* @transmit_midi1_msg, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %39, %37, %30
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @allocate_own_address(%struct.snd_ff*, i32) #1

declare dso_local i32 @snd_ff_transaction_reregister(%struct.snd_ff*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
