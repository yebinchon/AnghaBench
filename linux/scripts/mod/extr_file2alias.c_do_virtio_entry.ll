; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_virtio_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_virtio_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtio_device_id = common dso_local global i32 0, align 4
@device = common dso_local global i64 0, align 8
@vendor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"virtio:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@VIRTIO_DEV_ANY_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_virtio_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_virtio_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @virtio_device_id, align 4
  %9 = load i64, i64* @device, align 8
  %10 = call i32 @DEF_FIELD(i8* %7, i32 %8, i64 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @virtio_device_id, align 4
  %13 = load i64, i64* @vendor, align 8
  %14 = call i32 @DEF_FIELD(i8* %11, i32 %12, i64 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* @device, align 8
  %19 = load i64, i64* @VIRTIO_DEV_ANY_ID, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* @device, align 8
  %23 = call i32 @ADD(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21, i64 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* @vendor, align 8
  %26 = load i64, i64* @VIRTIO_DEV_ANY_ID, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* @vendor, align 8
  %30 = call i32 @ADD(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %28, i64 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @add_wildcard(i8* %31)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i64) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
