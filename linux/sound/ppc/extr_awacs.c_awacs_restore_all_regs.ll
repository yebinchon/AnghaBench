; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_awacs_restore_all_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_awacs_restore_all_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i64, i32* }

@PMAC_SCREAMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*)* @awacs_restore_all_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awacs_restore_all_regs(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %3 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %4 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac* %3, i32 0, i32 %8)
  %10 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac* %10, i32 1, i32 %15)
  %17 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %18 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %19 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac* %17, i32 2, i32 %22)
  %24 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %25 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac* %24, i32 4, i32 %29)
  %31 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %32 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PMAC_SCREAMER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %1
  %37 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %38 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac* %37, i32 5, i32 %42)
  %44 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %45 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %46 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac* %44, i32 6, i32 %49)
  %51 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %52 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %53 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac* %51, i32 7, i32 %56)
  br label %58

58:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @snd_pmac_awacs_write_noreg(%struct.snd_pmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
