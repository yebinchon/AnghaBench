; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_create_buf_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_create_buf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rchan = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dentry* (i8*, i32, i32, %struct.rchan_buf*, i32*)* }
%struct.rchan_buf = type { i32 }

@NAME_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.rchan*, %struct.rchan_buf*, i32)* @relay_create_buf_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @relay_create_buf_file(%struct.rchan* %0, %struct.rchan_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.rchan*, align 8
  %6 = alloca %struct.rchan_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  store %struct.rchan* %0, %struct.rchan** %5, align 8
  store %struct.rchan_buf* %1, %struct.rchan_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @NAME_MAX, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i64 %11, i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %47

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* @NAME_MAX, align 8
  %20 = load %struct.rchan*, %struct.rchan** %5, align 8
  %21 = getelementptr inbounds %struct.rchan, %struct.rchan* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @snprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load %struct.rchan*, %struct.rchan** %5, align 8
  %26 = getelementptr inbounds %struct.rchan, %struct.rchan* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.dentry* (i8*, i32, i32, %struct.rchan_buf*, i32*)*, %struct.dentry* (i8*, i32, i32, %struct.rchan_buf*, i32*)** %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.rchan*, %struct.rchan** %5, align 8
  %32 = getelementptr inbounds %struct.rchan, %struct.rchan* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @S_IRUSR, align 4
  %35 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %36 = load %struct.rchan*, %struct.rchan** %5, align 8
  %37 = getelementptr inbounds %struct.rchan, %struct.rchan* %36, i32 0, i32 1
  %38 = call %struct.dentry* %29(i8* %30, i32 %33, i32 %34, %struct.rchan_buf* %35, i32* %37)
  store %struct.dentry* %38, %struct.dentry** %8, align 8
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = call i64 @IS_ERR(%struct.dentry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %17
  store %struct.dentry* null, %struct.dentry** %8, align 8
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %46, %struct.dentry** %4, align 8
  br label %47

47:                                               ; preds = %43, %16
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %48
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
