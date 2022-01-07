; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_add_slaves.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_add_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*, %struct.snd_kcontrol*, i8**)* @add_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_slaves(%struct.snd_card* %0, %struct.snd_kcontrol* %1, i8** %2) #0 {
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i8** %2, i8*** %6, align 8
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call %struct.snd_kcontrol* @ctl_find(%struct.snd_card* %13, i8* %15)
  store %struct.snd_kcontrol* %16, %struct.snd_kcontrol** %7, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %18 = icmp ne %struct.snd_kcontrol* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %22 = call i32 @snd_ctl_add_slave(%struct.snd_kcontrol* %20, %struct.snd_kcontrol* %21)
  br label %23

23:                                               ; preds = %19, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %6, align 8
  br label %8

27:                                               ; preds = %8
  ret void
}

declare dso_local %struct.snd_kcontrol* @ctl_find(%struct.snd_card*, i8*) #1

declare dso_local i32 @snd_ctl_add_slave(%struct.snd_kcontrol*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
