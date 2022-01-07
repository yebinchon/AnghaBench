; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssiu.c_rsnd_ssiu_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssiu.c_rsnd_ssiu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dai = type { i32 }

@SSI_MODE0 = common dso_local global i32 0, align 4
@SSI_MODE1 = common dso_local global i32 0, align 4
@SSI_MODE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssiu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssiu_init(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.rsnd_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %6, align 8
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %16 = call %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream* %15)
  store %struct.rsnd_dai* %16, %struct.rsnd_dai** %7, align 8
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %18 = call i32 @rsnd_ssi_multi_slaves_runtime(%struct.rsnd_dai_stream* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %20 = call i32 @rsnd_ssi_use_busif(%struct.rsnd_dai_stream* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %22 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.rsnd_dai*, %struct.rsnd_dai** %7, align 8
  %24 = call i32 @rsnd_rdai_is_clk_master(%struct.rsnd_dai* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %58 [
    i32 0, label %26
    i32 1, label %26
    i32 2, label %26
    i32 3, label %26
    i32 4, label %26
    i32 9, label %43
  ]

26:                                               ; preds = %3, %3, %3, %3, %3
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 %32, 2
  %34 = call i32 @SSI_SYS_STATUS(i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, 4
  %37 = shl i32 15, %36
  %38 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %27

42:                                               ; preds = %27
  br label %58

43:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 1
  %52 = call i32 @SSI_SYS_STATUS(i32 %51)
  %53 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %48, i32 %52, i32 240)
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %44

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %3, %57, %42
  %59 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %60 = load i32, i32* @SSI_MODE0, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %66, %67
  %69 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %59, i32 %60, i32 %62, i32 %68)
  %70 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %71 = load i32, i32* @SSI_MODE1, align 4
  %72 = call i32 @rsnd_mod_read(%struct.rsnd_mod* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %74 = load i32, i32* @SSI_MODE2, align 4
  %75 = call i32 @rsnd_mod_read(%struct.rsnd_mod* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %77 = call i64 @rsnd_ssi_is_pin_sharing(%struct.rsnd_dai_stream* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %58
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %108

84:                                               ; preds = %58
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 16
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, 1048576
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, 16
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 518
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, 16
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %84
  br label %108

108:                                              ; preds = %107, %79
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 2, i32 1
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %112, %108
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 8, i32 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %123, %119
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, 16
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 131072, i32 65536
  %139 = load i32, i32* %12, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %134, %130
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, 512
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 2, i32 1
  %150 = load i32, i32* %13, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %145, %141
  %153 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %154 = load i32, i32* @SSI_MODE1, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %153, i32 %154, i32 1245215, i32 %155)
  %157 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %158 = load i32, i32* @SSI_MODE2, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %157, i32 %158, i32 23, i32 %159)
  ret i32 0
}

declare dso_local %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_ssi_multi_slaves_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_ssi_use_busif(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_rdai_is_clk_master(%struct.rsnd_dai*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @SSI_SYS_STATUS(i32) #1

declare dso_local i32 @rsnd_mod_bset(%struct.rsnd_mod*, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_read(%struct.rsnd_mod*, i32) #1

declare dso_local i64 @rsnd_ssi_is_pin_sharing(%struct.rsnd_dai_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
