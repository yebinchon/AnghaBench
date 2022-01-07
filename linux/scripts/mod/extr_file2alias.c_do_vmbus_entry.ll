; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_vmbus_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_vmbus_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@hv_vmbus_device_id = common dso_local global i32 0, align 4
@guid = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vmbus:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_vmbus_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vmbus_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [18 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @hv_vmbus_device_id, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid, align 8
  %12 = call i32 @DEF_FIELD_ADDR(i8* %9, i32 %10, %struct.TYPE_3__* %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @guid, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TO_NATIVE(i32 %28)
  %30 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %7, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %39 = call i32 @strcat(i8* %37, i8* %38)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @TO_NATIVE(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
