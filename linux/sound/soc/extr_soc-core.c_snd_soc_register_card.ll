; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_register_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_register_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_register_card(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %4 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %5 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %4, i32 0, i32 17
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %9, i32 0, i32 16
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %21 = call i32 @dev_set_drvdata(i32 %19, %struct.snd_soc_card* %20)
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %22, i32 0, i32 15
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %25, i32 0, i32 14
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 13
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 12
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 11
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %37, i32 0, i32 10
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %41 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %40, i32 0, i32 9
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %44 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %43, i32 0, i32 8
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %47 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %46, i32 0, i32 7
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %50 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %49, i32 0, i32 6
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %53 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %57 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %56, i32 0, i32 3
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %60 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %59, i32 0, i32 2
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %63 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %62, i32 0, i32 1
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %66 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %65, i32 0, i32 0
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %69 = call i32 @snd_soc_bind_card(%struct.snd_soc_card* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %16, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @dev_set_drvdata(i32, %struct.snd_soc_card*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_soc_bind_card(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
