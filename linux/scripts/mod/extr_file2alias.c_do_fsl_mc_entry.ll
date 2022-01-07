; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_fsl_mc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_fsl_mc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fsl_mc_device_id = common dso_local global i32 0, align 4
@vendor = common dso_local global i32 0, align 4
@obj_type = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"fsl-mc:v%08Xd%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_fsl_mc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fsl_mc_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @fsl_mc_device_id, align 4
  %9 = load i32, i32* @vendor, align 4
  %10 = call i32 @DEF_FIELD(i8* %7, i32 %8, i32 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @fsl_mc_device_id, align 4
  %13 = load i8**, i8*** @obj_type, align 8
  %14 = call i32 @DEF_FIELD_ADDR(i8* %11, i32 %12, i8** %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @vendor, align 4
  %17 = load i8**, i8*** @obj_type, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %18)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32) #1

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
