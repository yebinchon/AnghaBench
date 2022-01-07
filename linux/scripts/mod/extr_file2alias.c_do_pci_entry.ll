; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pci_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pci_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pci_device_id = common dso_local global i32 0, align 4
@vendor = common dso_local global i8 0, align 1
@device = common dso_local global i8 0, align 1
@subvendor = common dso_local global i8 0, align 1
@subdevice = common dso_local global i8 0, align 1
@class = common dso_local global i32 0, align 4
@class_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pci:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@PCI_ANY_ID = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Can't handle masks in %s:%04X\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_pci_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pci_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @pci_device_id, align 4
  %16 = load i8, i8* @vendor, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 @DEF_FIELD(i8* %14, i32 %15, i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @pci_device_id, align 4
  %21 = load i8, i8* @device, align 1
  %22 = zext i8 %21 to i32
  %23 = call i32 @DEF_FIELD(i8* %19, i32 %20, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @pci_device_id, align 4
  %26 = load i8, i8* @subvendor, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 @DEF_FIELD(i8* %24, i32 %25, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @pci_device_id, align 4
  %31 = load i8, i8* @subdevice, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 @DEF_FIELD(i8* %29, i32 %30, i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @pci_device_id, align 4
  %36 = load i32, i32* @class, align 4
  %37 = call i32 @DEF_FIELD(i8* %34, i32 %35, i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @pci_device_id, align 4
  %40 = load i32, i32* @class_mask, align 4
  %41 = call i32 @DEF_FIELD(i8* %38, i32 %39, i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* @vendor, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @PCI_ANY_ID, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = load i8, i8* @vendor, align 1
  %52 = call i32 @ADD(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8 zeroext %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* @device, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @PCI_ANY_ID, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = load i8, i8* @device, align 1
  %61 = call i32 @ADD(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %59, i8 zeroext %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* @subvendor, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @PCI_ANY_ID, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  %68 = zext i1 %67 to i32
  %69 = load i8, i8* @subvendor, align 1
  %70 = call i32 @ADD(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %68, i8 zeroext %69)
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* @subdevice, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @PCI_ANY_ID, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = load i8, i8* @subdevice, align 1
  %79 = call i32 @ADD(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %77, i8 zeroext %78)
  %80 = load i32, i32* @class, align 4
  %81 = ashr i32 %80, 16
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %8, align 1
  %83 = load i32, i32* @class_mask, align 4
  %84 = ashr i32 %83, 16
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %11, align 1
  %86 = load i32, i32* @class, align 4
  %87 = ashr i32 %86, 8
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %9, align 1
  %89 = load i32, i32* @class_mask, align 4
  %90 = ashr i32 %89, 8
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %12, align 1
  %92 = load i32, i32* @class, align 4
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %10, align 1
  %94 = load i32, i32* @class_mask, align 4
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %13, align 1
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %3
  %100 = load i8, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 255
  br i1 %102, label %119, label %103

103:                                              ; preds = %99, %3
  %104 = load i8, i8* %12, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8, i8* %12, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %109, 255
  br i1 %110, label %119, label %111

111:                                              ; preds = %107, %103
  %112 = load i8, i8* %13, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i8, i8* %13, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 255
  br i1 %118, label %119, label %123

119:                                              ; preds = %115, %107, %99
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* @class_mask, align 4
  %122 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %120, i32 %121)
  store i32 0, i32* %4, align 4
  br label %147

123:                                              ; preds = %115, %111
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %11, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 255
  %128 = zext i1 %127 to i32
  %129 = load i8, i8* %8, align 1
  %130 = call i32 @ADD(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %128, i8 zeroext %129)
  %131 = load i8*, i8** %7, align 8
  %132 = load i8, i8* %12, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 255
  %135 = zext i1 %134 to i32
  %136 = load i8, i8* %9, align 1
  %137 = call i32 @ADD(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %135, i8 zeroext %136)
  %138 = load i8*, i8** %7, align 8
  %139 = load i8, i8* %13, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 255
  %142 = zext i1 %141 to i32
  %143 = load i8, i8* %10, align 1
  %144 = call i32 @ADD(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %142, i8 zeroext %143)
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @add_wildcard(i8* %145)
  store i32 1, i32* %4, align 4
  br label %147

147:                                              ; preds = %123, %119
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i8 zeroext) #1

declare dso_local i32 @warn(i8*, i8*, i32) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
