; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_section.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_check_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@SHT_PROGBITS = common dso_local global i64 0, align 8
@SHF_ALLOC = common dso_local global i32 0, align 4
@section_white_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [180 x i8] c"%s (%s): unexpected non-allocatable section.\0ADid you forget to use \22ax\22/\22aw\22 in a .S file?\0ANote that for example <linux/init.h> contains\0Asection definitions for use in .S files.\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.elf_info*, %struct.TYPE_4__*)* @check_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_section(i8* %0, %struct.elf_info* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_info*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.elf_info* %1, %struct.elf_info** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = call i8* @sech_name(%struct.elf_info* %8, %struct.TYPE_4__* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SHT_PROGBITS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SHF_ALLOC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @section_white_list, align 4
  %26 = call i32 @match(i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @warn(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %23, %16, %3
  ret void
}

declare dso_local i8* @sech_name(%struct.elf_info*, %struct.TYPE_4__*) #1

declare dso_local i32 @match(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
