; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_usb_table.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_usb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@SIZE_usb_device_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.module*)* @do_usb_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_usb_table(i8* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %9 = load i64, i64* @SIZE_usb_device_id, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.module*, %struct.module** %6, align 8
  %11 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @device_id_check(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14, i8* %15)
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %18, %17
  store i64 %19, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %32, %3
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = load %struct.module*, %struct.module** %6, align 8
  %31 = call i32 @do_usb_entry_multi(i8* %29, %struct.module* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = add i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %20

38:                                               ; preds = %20
  ret void
}

declare dso_local i32 @device_id_check(i32, i8*, i64, i64, i8*) #1

declare dso_local i32 @do_usb_entry_multi(i8*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
