; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_tee_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_tee_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@tee_client_device_id = common dso_local global i32 0, align 4
@uuid = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [73 x i8] c"tee:%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_tee_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tee_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @tee_client_device_id, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %10 = call i32 @DEF_FIELD(i8* %7, i32 %8, i32* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 6
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 9
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 10
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 11
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 12
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 13
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 14
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uuid, i32 0, i32 0), align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 15
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @add_wildcard(i8* %61)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
