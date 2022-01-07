; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali5451_spdif_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali5451_spdif_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.snd_ali* }
%struct.snd_ali = type { i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ali5451_spdif_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali5451_spdif_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ali*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 1
  %10 = load %struct.snd_ali*, %struct.snd_ali** %9, align 8
  store %struct.snd_ali* %10, %struct.snd_ali** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %133 [
    i32 0, label %27
    i32 1, label %63
    i32 2, label %101
  ]

27:                                               ; preds = %2
  %28 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = xor i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, 2
  store i32 %47, i32* %45, align 4
  %48 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %49 = call i32 @snd_ali_enable_spdif_out(%struct.snd_ali* %48)
  br label %61

50:                                               ; preds = %40
  %51 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %52 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -3
  store i32 %54, i32* %52, align 4
  %55 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %56 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -5
  store i32 %58, i32* %56, align 4
  %59 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %60 = call i32 @snd_ali_disable_spdif_out(%struct.snd_ali* %59)
  br label %61

61:                                               ; preds = %50, %43
  br label %62

62:                                               ; preds = %61, %27
  br label %134

63:                                               ; preds = %2
  %64 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %65 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = xor i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %63
  %77 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %78 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 4
  store i32 %89, i32* %87, align 4
  %90 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %91 = call i32 @snd_ali_enable_spdif_chnout(%struct.snd_ali* %90)
  br label %99

92:                                               ; preds = %82
  %93 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %94 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -5
  store i32 %96, i32* %94, align 4
  %97 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %98 = call i32 @snd_ali_disable_spdif_chnout(%struct.snd_ali* %97)
  br label %99

99:                                               ; preds = %92, %85
  br label %100

100:                                              ; preds = %99, %76, %63
  br label %134

101:                                              ; preds = %2
  %102 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %103 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = xor i32 %109, %110
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %101
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %119 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %123 = call i32 @snd_ali_enable_spdif_in(%struct.snd_ali* %122)
  br label %131

124:                                              ; preds = %114
  %125 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %126 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, -2
  store i32 %128, i32* %126, align 4
  %129 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %130 = call i32 @snd_ali_disable_spdif_in(%struct.snd_ali* %129)
  br label %131

131:                                              ; preds = %124, %117
  br label %132

132:                                              ; preds = %131, %101
  br label %134

133:                                              ; preds = %2
  br label %134

134:                                              ; preds = %133, %132, %100, %62
  %135 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %136 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %135, i32 0, i32 1
  %137 = call i32 @spin_unlock_irq(i32* %136)
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ali_enable_spdif_out(%struct.snd_ali*) #1

declare dso_local i32 @snd_ali_disable_spdif_out(%struct.snd_ali*) #1

declare dso_local i32 @snd_ali_enable_spdif_chnout(%struct.snd_ali*) #1

declare dso_local i32 @snd_ali_disable_spdif_chnout(%struct.snd_ali*) #1

declare dso_local i32 @snd_ali_enable_spdif_in(%struct.snd_ali*) #1

declare dso_local i32 @snd_ali_disable_spdif_in(%struct.snd_ali*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
