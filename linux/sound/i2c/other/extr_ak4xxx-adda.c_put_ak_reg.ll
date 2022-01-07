; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_put_ak_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_put_ak_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_akm4xxx = type { i32 }

@vol_cvt_datt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, i32, i8)* @put_ak_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_ak_reg(%struct.snd_kcontrol* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.snd_akm4xxx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %12 = call %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_akm4xxx* %12, %struct.snd_akm4xxx** %8, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AK_GET_MASK(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AK_GET_CHIP(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call zeroext i8 @snd_akm4xxx_get_vol(%struct.snd_akm4xxx* %21, i32 %22, i32 %23)
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

30:                                               ; preds = %3
  %31 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i8, i8* %7, align 1
  %35 = call i32 @snd_akm4xxx_set_vol(%struct.snd_akm4xxx* %31, i32 %32, i32 %33, i8 zeroext %34)
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @AK_GET_VOL_CVT(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** @vol_cvt_datt, align 8
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %7, align 1
  br label %51

51:                                               ; preds = %45, %41, %30
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %53 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @AK_GET_IPGA(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 128
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8, i8* %7, align 1
  %63 = add i8 %62, 1
  store i8 %63, i8* %7, align 1
  br label %64

64:                                               ; preds = %61, %57, %51
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %66 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @AK_GET_INVERT(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = load i8, i8* %7, align 1
  %73 = zext i8 %72 to i32
  %74 = sub i32 %71, %73
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %7, align 1
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %78 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @AK_GET_NEEDSMSB(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i8, i8* %7, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, 128
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %7, align 1
  br label %87

87:                                               ; preds = %82, %76
  %88 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i8, i8* %7, align 1
  %92 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %88, i32 %89, i32 %90, i8 zeroext %91)
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %87, %29
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @AK_GET_MASK(i32) #1

declare dso_local i32 @AK_GET_CHIP(i32) #1

declare dso_local zeroext i8 @snd_akm4xxx_get_vol(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_set_vol(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

declare dso_local i64 @AK_GET_VOL_CVT(i32) #1

declare dso_local i64 @AK_GET_IPGA(i32) #1

declare dso_local i64 @AK_GET_INVERT(i32) #1

declare dso_local i64 @AK_GET_NEEDSMSB(i32) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
