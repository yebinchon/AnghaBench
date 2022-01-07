; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_power.c_snd_usb_find_power_domain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_power.c_snd_usb_find_power_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_power_domain = type { i8*, i8*, i32 }
%struct.usb_host_interface = type { i32, i32 }
%struct.uac3_power_domain_descriptor = type { i32, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UAC3_POWER_DOMAIN = common dso_local global i32 0, align 4
@UAC_VERSION_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_usb_power_domain* @snd_usb_find_power_domain(%struct.usb_host_interface* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_usb_power_domain*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.snd_usb_power_domain*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.uac3_power_domain_descriptor*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.snd_usb_power_domain* @kzalloc(i32 24, i32 %10)
  store %struct.snd_usb_power_domain* %11, %struct.snd_usb_power_domain** %6, align 8
  %12 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %13 = icmp ne %struct.snd_usb_power_domain* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.snd_usb_power_domain* null, %struct.snd_usb_power_domain** %3, align 8
  br label %81

15:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  br label %16

16:                                               ; preds = %77, %34, %15
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %21 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @UAC3_POWER_DOMAIN, align 4
  %25 = call i8* @snd_usb_find_csint_desc(i32 %19, i32 %22, i8* %23, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %78

27:                                               ; preds = %16
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.uac3_power_domain_descriptor*
  store %struct.uac3_power_domain_descriptor* %29, %struct.uac3_power_domain_descriptor** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @UAC_VERSION_3, align 4
  %32 = call i32 @snd_usb_validate_audio_desc(i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %16

35:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %74, %35
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.uac3_power_domain_descriptor*, %struct.uac3_power_domain_descriptor** %8, align 8
  %39 = getelementptr inbounds %struct.uac3_power_domain_descriptor, %struct.uac3_power_domain_descriptor* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %36
  %43 = load %struct.uac3_power_domain_descriptor*, %struct.uac3_power_domain_descriptor** %8, align 8
  %44 = getelementptr inbounds %struct.uac3_power_domain_descriptor, %struct.uac3_power_domain_descriptor* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %42
  %55 = load %struct.uac3_power_domain_descriptor*, %struct.uac3_power_domain_descriptor** %8, align 8
  %56 = getelementptr inbounds %struct.uac3_power_domain_descriptor, %struct.uac3_power_domain_descriptor* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %59 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.uac3_power_domain_descriptor*, %struct.uac3_power_domain_descriptor** %8, align 8
  %61 = getelementptr inbounds %struct.uac3_power_domain_descriptor, %struct.uac3_power_domain_descriptor* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le16_to_cpu(i32 %62)
  %64 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %65 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.uac3_power_domain_descriptor*, %struct.uac3_power_domain_descriptor** %8, align 8
  %67 = getelementptr inbounds %struct.uac3_power_domain_descriptor, %struct.uac3_power_domain_descriptor* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @le16_to_cpu(i32 %68)
  %70 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %71 = getelementptr inbounds %struct.snd_usb_power_domain, %struct.snd_usb_power_domain* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  store %struct.snd_usb_power_domain* %72, %struct.snd_usb_power_domain** %3, align 8
  br label %81

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %36

77:                                               ; preds = %36
  br label %16

78:                                               ; preds = %16
  %79 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %6, align 8
  %80 = call i32 @kfree(%struct.snd_usb_power_domain* %79)
  store %struct.snd_usb_power_domain* null, %struct.snd_usb_power_domain** %3, align 8
  br label %81

81:                                               ; preds = %78, %54, %14
  %82 = load %struct.snd_usb_power_domain*, %struct.snd_usb_power_domain** %3, align 8
  ret %struct.snd_usb_power_domain* %82
}

declare dso_local %struct.snd_usb_power_domain* @kzalloc(i32, i32) #1

declare dso_local i8* @snd_usb_find_csint_desc(i32, i32, i8*, i32) #1

declare dso_local i32 @snd_usb_validate_audio_desc(i8*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.snd_usb_power_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
