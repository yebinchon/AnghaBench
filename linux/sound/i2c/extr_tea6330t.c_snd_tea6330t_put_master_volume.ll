; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_master_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_put_master_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tea6330t = type { i8, i8, i8*, i32, i32 }

@TEA6330T_SADDR_VOLUME_LEFT = common dso_local global i64 0, align 8
@TEA6330T_SADDR_VOLUME_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_tea6330t_put_master_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_tea6330t_put_master_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.tea6330t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.tea6330t* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.tea6330t* %13, %struct.tea6330t** %5, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 44
  %22 = add nsw i32 %21, 20
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %10, align 1
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 44
  %32 = add nsw i32 %31, 20
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %11, align 1
  %34 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %35 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_i2c_lock(i32 %36)
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %41 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 8
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %39, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %2
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %49 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %47, %51
  br label %53

53:                                               ; preds = %45, %2
  %54 = phi i1 [ true, %2 ], [ %52, %45 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i8, i8* %10, align 1
  %57 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %58 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %57, i32 0, i32 0
  store i8 %56, i8* %58, align 8
  %59 = load i8, i8* %11, align 1
  %60 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %61 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %60, i32 0, i32 1
  store i8 %59, i8* %61, align 1
  store i32 0, i32* %7, align 4
  %62 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %63 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* @TEA6330T_SADDR_VOLUME_LEFT, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %53
  %71 = load i64, i64* @TEA6330T_SADDR_VOLUME_LEFT, align 8
  %72 = trunc i64 %71 to i8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 %75
  store i8 %72, i8* %76, align 1
  %77 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %78 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 8
  %80 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %81 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* @TEA6330T_SADDR_VOLUME_LEFT, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %79, i8* %84, align 1
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 %87
  store i8 %79, i8* %88, align 1
  br label %89

89:                                               ; preds = %70, %53
  %90 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %91 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* @TEA6330T_SADDR_VOLUME_RIGHT, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i64, i64* @TEA6330T_SADDR_VOLUME_RIGHT, align 8
  %103 = trunc i64 %102 to i8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 %106
  store i8 %103, i8* %107, align 1
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %110 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 1
  %112 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %113 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* @TEA6330T_SADDR_VOLUME_RIGHT, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 %111, i8* %116, align 1
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 %119
  store i8 %111, i8* %120, align 1
  br label %121

121:                                              ; preds = %108, %89
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %126 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @snd_i2c_sendbytes(i32 %127, i8* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %124
  br label %135

135:                                              ; preds = %134, %121
  %136 = load %struct.tea6330t*, %struct.tea6330t** %5, align 8
  %137 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @snd_i2c_unlock(i32 %138)
  %140 = load i32, i32* %6, align 4
  ret i32 %140
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
