; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c___snd_opl3sa2_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c___snd_opl3sa2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3sa2 = type { i8*, i64 }

@port = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl3sa2*, i8, i8)* @__snd_opl3sa2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__snd_opl3sa2_write(%struct.snd_opl3sa2* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_opl3sa2*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.snd_opl3sa2* %0, %struct.snd_opl3sa2** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %5, align 1
  %8 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %4, align 8
  %9 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @outb(i8 zeroext %7, i64 %10)
  %12 = load i8, i8* %6, align 1
  %13 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %4, align 8
  %14 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @outb(i8 zeroext %12, i64 %16)
  %18 = load i8, i8* %6, align 1
  %19 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %4, align 8
  %20 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 %18, i8* %24, align 1
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
