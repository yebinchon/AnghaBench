; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_add_module.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_add_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ddebug = type { i32 }
%struct.ddebug_table = type { i8*, i32, i32, %struct._ddebug* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error adding module: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ddebug_lock = common dso_local global i32 0, align 4
@ddebug_tables = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%u debug prints in module %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddebug_add_module(%struct._ddebug* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._ddebug*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ddebug_table*, align 8
  store %struct._ddebug* %0, %struct._ddebug** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ddebug_table* @kzalloc(i32 24, i32 %9)
  store %struct.ddebug_table* %10, %struct.ddebug_table** %8, align 8
  %11 = load %struct.ddebug_table*, %struct.ddebug_table** %8, align 8
  %12 = icmp eq %struct.ddebug_table* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.ddebug_table*, %struct.ddebug_table** %8, align 8
  %21 = getelementptr inbounds %struct.ddebug_table, %struct.ddebug_table* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ddebug_table*, %struct.ddebug_table** %8, align 8
  %24 = getelementptr inbounds %struct.ddebug_table, %struct.ddebug_table* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct._ddebug*, %struct._ddebug** %5, align 8
  %26 = load %struct.ddebug_table*, %struct.ddebug_table** %8, align 8
  %27 = getelementptr inbounds %struct.ddebug_table, %struct.ddebug_table* %26, i32 0, i32 3
  store %struct._ddebug* %25, %struct._ddebug** %27, align 8
  %28 = call i32 @mutex_lock(i32* @ddebug_lock)
  %29 = load %struct.ddebug_table*, %struct.ddebug_table** %8, align 8
  %30 = getelementptr inbounds %struct.ddebug_table, %struct.ddebug_table* %29, i32 0, i32 2
  %31 = call i32 @list_add_tail(i32* %30, i32* @ddebug_tables)
  %32 = call i32 @mutex_unlock(i32* @ddebug_lock)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ddebug_table*, %struct.ddebug_table** %8, align 8
  %35 = getelementptr inbounds %struct.ddebug_table, %struct.ddebug_table* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @vpr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33, i8* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %18, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.ddebug_table* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vpr_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
