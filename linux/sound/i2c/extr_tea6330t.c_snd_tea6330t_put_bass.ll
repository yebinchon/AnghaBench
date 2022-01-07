; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_bass.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_bass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tea6330t = type { i32, i8, i8*, i32, i32, i64 }

@TEA6330T_SADDR_BASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_tea6330t_put_bass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_tea6330t_put_bass(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.tea6330t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  %9 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.tea6330t* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.tea6330t* %11, %struct.tea6330t** %5, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %20 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = srem i32 %18, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %9, align 1
  %25 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %26 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_i2c_lock(i32 %27)
  %29 = load i8, i8* %9, align 1
  %30 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %31 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %30, i32 0, i32 1
  store i8 %29, i8* %31, align 4
  %32 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %33 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 7, i32 3
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %9, align 1
  %42 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %43 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* @TEA6330T_SADDR_BASS, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %48, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load i64, i64* @TEA6330T_SADDR_BASS, align 8
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %54, i8* %55, align 1
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %58 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* @TEA6330T_SADDR_BASS, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 %56, i8* %61, align 1
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %56, i8* %62, align 1
  %63 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %64 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %67 = call i32 @snd_i2c_sendbytes(i32 %65, i8* %66, i32 2)
  store i32 %67, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %2
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %2
  %72 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %73 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snd_i2c_unlock(i32 %74)
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.tea6330t* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
