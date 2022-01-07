; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_isapnp_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_isapnp_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isapnp_device_id = common dso_local global i32 0, align 4
@vendor = common dso_local global i32 0, align 4
@function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pnp:d%c%c%c%x%x%x%x*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_isapnp_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_isapnp_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @isapnp_device_id, align 4
  %9 = load i32, i32* @vendor, align 4
  %10 = call i32 @DEF_FIELD(i8* %7, i32 %8, i32 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @isapnp_device_id, align 4
  %13 = load i32, i32* @function, align 4
  %14 = call i32 @DEF_FIELD(i8* %11, i32 %12, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @vendor, align 4
  %17 = ashr i32 %16, 2
  %18 = and i32 %17, 63
  %19 = add nsw i32 65, %18
  %20 = sub nsw i32 %19, 1
  %21 = trunc i32 %20 to i8
  %22 = load i32, i32* @vendor, align 4
  %23 = and i32 %22, 3
  %24 = shl i32 %23, 3
  %25 = load i32, i32* @vendor, align 4
  %26 = ashr i32 %25, 13
  %27 = and i32 %26, 7
  %28 = or i32 %24, %27
  %29 = add nsw i32 65, %28
  %30 = sub nsw i32 %29, 1
  %31 = trunc i32 %30 to i8
  %32 = load i32, i32* @vendor, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 31
  %35 = add nsw i32 65, %34
  %36 = sub nsw i32 %35, 1
  %37 = trunc i32 %36 to i8
  %38 = load i32, i32* @function, align 4
  %39 = ashr i32 %38, 4
  %40 = and i32 %39, 15
  %41 = load i32, i32* @function, align 4
  %42 = and i32 %41, 15
  %43 = load i32, i32* @function, align 4
  %44 = ashr i32 %43, 12
  %45 = and i32 %44, 15
  %46 = load i32, i32* @function, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 15
  %49 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 signext %21, i8 signext %31, i8 signext %37, i32 %40, i32 %42, i32 %45, i32 %48)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i8 signext, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
