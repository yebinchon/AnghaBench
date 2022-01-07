; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_add_fixup_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_add_fixup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i32 }
%struct.node = type { i32 }
%struct.property = type { i32 }
%struct.marker = type { i64, i32, i32 }

@REF_PHANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"arguments should not contain ':'\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s:%s:%u\00", align 1
@TYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dt_info*, %struct.node*, %struct.node*, %struct.property*, %struct.marker*)* @add_fixup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fixup_entry(%struct.dt_info* %0, %struct.node* %1, %struct.node* %2, %struct.property* %3, %struct.marker* %4) #0 {
  %6 = alloca %struct.dt_info*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca %struct.marker*, align 8
  %11 = alloca i8*, align 8
  store %struct.dt_info* %0, %struct.dt_info** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store %struct.node* %2, %struct.node** %8, align 8
  store %struct.property* %3, %struct.property** %9, align 8
  store %struct.marker* %4, %struct.marker** %10, align 8
  %12 = load %struct.marker*, %struct.marker** %10, align 8
  %13 = getelementptr inbounds %struct.marker, %struct.marker* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REF_PHANDLE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.node*, %struct.node** %8, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strchr(i32 %21, i8 signext 58)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load %struct.property*, %struct.property** %9, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strchr(i32 %27, i8 signext 58)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %5
  %31 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.node*, %struct.node** %8, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.property*, %struct.property** %9, align 8
  %37 = getelementptr inbounds %struct.property, %struct.property* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.marker*, %struct.marker** %10, align 8
  %40 = getelementptr inbounds %struct.marker, %struct.marker* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xasprintf(i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %41)
  %43 = load %struct.node*, %struct.node** %7, align 8
  %44 = load %struct.marker*, %struct.marker** %10, align 8
  %45 = getelementptr inbounds %struct.marker, %struct.marker* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %49, 1
  %51 = load i32, i32* @TYPE_STRING, align 4
  %52 = call i32 @append_to_property(%struct.node* %43, i32 %46, i8* %47, i64 %50, i32 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @free(i8* %53)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @append_to_property(%struct.node*, i32, i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
