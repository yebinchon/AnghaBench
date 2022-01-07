; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniperif = type { i64, i32 }

@SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to reset uniperif\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_uniperiph_reset(%struct.uniperif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniperif*, align 8
  %4 = alloca i32, align 4
  store %struct.uniperif* %0, %struct.uniperif** %3, align 8
  store i32 10, i32* %4, align 4
  %5 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %6 = call i32 @SET_UNIPERIF_SOFT_RST_SOFT_RST(%struct.uniperif* %5)
  %7 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %8 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %22, %12
  %14 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %15 = call i64 @GET_UNIPERIF_SOFT_RST_SOFT_RST(%struct.uniperif* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = call i32 @udelay(i32 5)
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  br label %13

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %32 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @SET_UNIPERIF_SOFT_RST_SOFT_RST(%struct.uniperif*) #1

declare dso_local i64 @GET_UNIPERIF_SOFT_RST_SOFT_RST(%struct.uniperif*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
