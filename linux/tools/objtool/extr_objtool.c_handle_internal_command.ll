; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_objtool.c_handle_internal_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_objtool.c_handle_internal_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_struct = type { i32 (i32, i8**)*, i32 }

@objtool_cmds = common dso_local global %struct.cmd_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @handle_internal_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_internal_command(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmd_struct*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %38, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.cmd_struct*, %struct.cmd_struct** @objtool_cmds, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.cmd_struct* %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load %struct.cmd_struct*, %struct.cmd_struct** @objtool_cmds, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %18, i64 %20
  store %struct.cmd_struct* %21, %struct.cmd_struct** %8, align 8
  %22 = load %struct.cmd_struct*, %struct.cmd_struct** %8, align 8
  %23 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %38

29:                                               ; preds = %17
  %30 = load %struct.cmd_struct*, %struct.cmd_struct** %8, align 8
  %31 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %30, i32 0, i32 0
  %32 = load i32 (i32, i8**)*, i32 (i32, i8**)** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i8**, i8*** %4, align 8
  %35 = call i32 %32(i32 %33, i8** %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %12

41:                                               ; preds = %12
  %42 = call i32 (...) @cmd_usage()
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.cmd_struct*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @cmd_usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
