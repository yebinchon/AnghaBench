; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_mei_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_mei_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mei_cl_device_id = common dso_local global i32 0, align 4
@name = common dso_local global i8** null, align 8
@uuid = common dso_local global i8** null, align 8
@version = common dso_local global i64 0, align 8
@MEI_CL_MODULE_PREFIX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@MEI_CL_VERSION_ANY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c":*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_mei_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mei_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @mei_cl_device_id, align 4
  %9 = load i8**, i8*** @name, align 8
  %10 = call i32 @DEF_FIELD_ADDR(i8* %7, i32 %8, i8** %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @mei_cl_device_id, align 4
  %13 = load i8**, i8*** @uuid, align 8
  %14 = call i32 @DEF_FIELD_ADDR(i8* %11, i32 %12, i8** %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @mei_cl_device_id, align 4
  %17 = load i64, i64* @version, align 8
  %18 = call i32 @DEF_FIELD(i8* %15, i32 %16, i64 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** @MEI_CL_MODULE_PREFIX, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8**, i8*** @name, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i8**, i8*** @name, align 8
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i8* [ %35, %33 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i8**, i8*** @uuid, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @add_uuid(i8* %40, i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* @version, align 8
  %46 = load i64, i64* @MEI_CL_VERSION_ANY, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* @version, align 8
  %50 = call i32 @ADD(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %48, i64 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, i8**) #1

declare dso_local i32 @DEF_FIELD(i8*, i32, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_uuid(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
