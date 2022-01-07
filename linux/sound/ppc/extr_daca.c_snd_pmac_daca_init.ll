; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_daca.c_snd_pmac_daca_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_daca.c_snd_pmac_daca_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32, %struct.TYPE_4__*, i32, %struct.pmac_daca* }
%struct.TYPE_4__ = type { i32 }
%struct.pmac_daca = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"i2c-powermac\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@daca_cleanup = common dso_local global i32 0, align 4
@DACA_I2C_ADDR = common dso_local global i32 0, align 4
@daca_init_client = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DACA\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"PowerMac DACA\00", align 1
@daca_mixers = common dso_local global i32* null, align 8
@daca_resume = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pmac_daca_init(%struct.snd_pmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmac_daca*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  %7 = call i32 @request_module(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pmac_daca* @kzalloc(i32 24, i32 %8)
  store %struct.pmac_daca* %9, %struct.pmac_daca** %6, align 8
  %10 = load %struct.pmac_daca*, %struct.pmac_daca** %6, align 8
  %11 = icmp ne %struct.pmac_daca* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.pmac_daca*, %struct.pmac_daca** %6, align 8
  %17 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %17, i32 0, i32 3
  store %struct.pmac_daca* %16, %struct.pmac_daca** %18, align 8
  %19 = load i32, i32* @daca_cleanup, align 4
  %20 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.pmac_daca*, %struct.pmac_daca** %6, align 8
  %23 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @DACA_I2C_ADDR, align 4
  %25 = load %struct.pmac_daca*, %struct.pmac_daca** %6, align 8
  %26 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @daca_init_client, align 4
  %29 = load %struct.pmac_daca*, %struct.pmac_daca** %6, align 8
  %30 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.pmac_daca*, %struct.pmac_daca** %6, align 8
  %33 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.pmac_daca*, %struct.pmac_daca** %6, align 8
  %36 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %35, i32 0, i32 1
  %37 = call i32 @snd_pmac_keywest_init(%struct.TYPE_3__* %36)
  store i32 %37, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %72

41:                                               ; preds = %15
  %42 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %43 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcpy(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %68, %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32*, i32** @daca_mixers, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %55 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32*, i32** @daca_mixers, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %62 = call i32 @snd_ctl_new1(i32* %60, %struct.snd_pmac* %61)
  %63 = call i32 @snd_ctl_add(%struct.TYPE_4__* %56, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %72

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %48

71:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %65, %39, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @request_module(i8*) #1

declare dso_local %struct.pmac_daca* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pmac_keywest_init(%struct.TYPE_3__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_pmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
