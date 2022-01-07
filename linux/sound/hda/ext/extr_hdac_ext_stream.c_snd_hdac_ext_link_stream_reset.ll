; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_link_stream_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_link_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_ext_stream = type { i64 }

@AZX_REG_PPLCCTL = common dso_local global i64 0, align 8
@AZX_PPLCCTL_STRST = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_ext_link_stream_reset(%struct.hdac_ext_stream* %0) #0 {
  %2 = alloca %struct.hdac_ext_stream*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.hdac_ext_stream* %0, %struct.hdac_ext_stream** %2, align 8
  %5 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %2, align 8
  %6 = call i32 @snd_hdac_ext_link_stream_clear(%struct.hdac_ext_stream* %5)
  %7 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %2, align 8
  %8 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AZX_REG_PPLCCTL, align 8
  %11 = load i8, i8* @AZX_PPLCCTL_STRST, align 1
  %12 = load i8, i8* @AZX_PPLCCTL_STRST, align 1
  %13 = call i32 @snd_hdac_updatel(i64 %9, i64 %10, i8 zeroext %11, i8 zeroext %12)
  %14 = call i32 @udelay(i32 3)
  store i32 50, i32* %4, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %2, align 8
  %17 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AZX_REG_PPLCCTL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call zeroext i8 @readl(i64 %20)
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @AZX_PPLCCTL_STRST, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %3, align 1
  %27 = load i8, i8* %3, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %36

30:                                               ; preds = %15
  %31 = call i32 @udelay(i32 3)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %15, label %36

36:                                               ; preds = %32, %29
  %37 = load i8, i8* @AZX_PPLCCTL_STRST, align 1
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %3, align 1
  %44 = load i8, i8* %3, align 1
  %45 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %2, align 8
  %46 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AZX_REG_PPLCCTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i8 zeroext %44, i64 %49)
  %51 = call i32 @udelay(i32 3)
  store i32 50, i32* %4, align 4
  br label %52

52:                                               ; preds = %69, %36
  %53 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %2, align 8
  %54 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AZX_REG_PPLCCTL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call zeroext i8 @readl(i64 %57)
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @AZX_PPLCCTL_STRST, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %59, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %3, align 1
  %64 = load i8, i8* %3, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %52
  br label %73

67:                                               ; preds = %52
  %68 = call i32 @udelay(i32 3)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %52, label %73

73:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @snd_hdac_ext_link_stream_clear(%struct.hdac_ext_stream*) #1

declare dso_local i32 @snd_hdac_updatel(i64, i64, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
