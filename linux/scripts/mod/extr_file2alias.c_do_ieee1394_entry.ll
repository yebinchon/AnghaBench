; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_ieee1394_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_ieee1394_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ieee1394_device_id = common dso_local global i32 0, align 4
@match_flags = common dso_local global i32 0, align 4
@vendor_id = common dso_local global i32 0, align 4
@model_id = common dso_local global i32 0, align 4
@specifier_id = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ieee1394:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ven\00", align 1
@IEEE1394_MATCH_VENDOR_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"mo\00", align 1
@IEEE1394_MATCH_MODEL_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@IEEE1394_MATCH_SPECIFIER_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@IEEE1394_MATCH_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_ieee1394_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ieee1394_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @ieee1394_device_id, align 4
  %9 = load i32, i32* @match_flags, align 4
  %10 = call i32 @DEF_FIELD(i8* %7, i32 %8, i32 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @ieee1394_device_id, align 4
  %13 = load i32, i32* @vendor_id, align 4
  %14 = call i32 @DEF_FIELD(i8* %11, i32 %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @ieee1394_device_id, align 4
  %17 = load i32, i32* @model_id, align 4
  %18 = call i32 @DEF_FIELD(i8* %15, i32 %16, i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @ieee1394_device_id, align 4
  %21 = load i32, i32* @specifier_id, align 4
  %22 = call i32 @DEF_FIELD(i8* %19, i32 %20, i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @ieee1394_device_id, align 4
  %25 = load i32, i32* @version, align 4
  %26 = call i32 @DEF_FIELD(i8* %23, i32 %24, i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @match_flags, align 4
  %31 = load i32, i32* @IEEE1394_MATCH_VENDOR_ID, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @vendor_id, align 4
  %34 = call i32 @ADD(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @match_flags, align 4
  %37 = load i32, i32* @IEEE1394_MATCH_MODEL_ID, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @model_id, align 4
  %40 = call i32 @ADD(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @match_flags, align 4
  %43 = load i32, i32* @IEEE1394_MATCH_SPECIFIER_ID, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @specifier_id, align 4
  %46 = call i32 @ADD(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @match_flags, align 4
  %49 = load i32, i32* @IEEE1394_MATCH_VERSION, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @version, align 4
  %52 = call i32 @ADD(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @add_wildcard(i8* %53)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
