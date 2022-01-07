; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_parse.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_asn1_compiler.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32, %struct.token*, %struct.TYPE_2__* }
%struct.token = type { i64, i32, i8* }
%struct.TYPE_2__ = type { %struct.type* }

@type_list = common dso_local global %struct.type* null, align 8
@TOKEN_TYPE_NAME = common dso_local global i64 0, align 8
@TOKEN_ASSIGNMENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s:%d: Parse error at token '%s'\0A\00", align 1
@filename = common dso_local global i8* null, align 8
@TYPE_STOP_MARKER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Extracted %u actions\0A\00", align 1
@nr_actions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse() #0 {
  %1 = alloca %struct.token*, align 8
  %2 = alloca %struct.type*, align 8
  %3 = load %struct.type*, %struct.type** @type_list, align 8
  store %struct.type* %3, %struct.type** %2, align 8
  br label %4

4:                                                ; preds = %56, %0
  %5 = load %struct.type*, %struct.type** %2, align 8
  %6 = getelementptr inbounds %struct.type, %struct.type* %5, i32 0, i32 1
  %7 = load %struct.token*, %struct.token** %6, align 8
  store %struct.token* %7, %struct.token** %1, align 8
  %8 = load %struct.token*, %struct.token** %1, align 8
  %9 = getelementptr inbounds %struct.token, %struct.token* %8, i64 0
  %10 = getelementptr inbounds %struct.token, %struct.token* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TOKEN_TYPE_NAME, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load %struct.token*, %struct.token** %1, align 8
  %16 = getelementptr inbounds %struct.token, %struct.token* %15, i64 1
  %17 = getelementptr inbounds %struct.token, %struct.token* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TOKEN_ASSIGNMENT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %4
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %14
  %24 = load %struct.token*, %struct.token** %1, align 8
  %25 = getelementptr inbounds %struct.token, %struct.token* %24, i64 2
  store %struct.token* %25, %struct.token** %1, align 8
  %26 = load %struct.type*, %struct.type** %2, align 8
  %27 = getelementptr inbounds %struct.type, %struct.type* %26, i64 1
  %28 = getelementptr inbounds %struct.type, %struct.type* %27, i32 0, i32 1
  %29 = load %struct.token*, %struct.token** %28, align 8
  %30 = call %struct.TYPE_2__* @parse_type(%struct.token** %1, %struct.token* %29, i32* null)
  %31 = load %struct.type*, %struct.type** %2, align 8
  %32 = getelementptr inbounds %struct.type, %struct.type* %31, i32 0, i32 2
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %32, align 8
  %33 = load %struct.type*, %struct.type** %2, align 8
  %34 = load %struct.type*, %struct.type** %2, align 8
  %35 = getelementptr inbounds %struct.type, %struct.type* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.type* %33, %struct.type** %37, align 8
  %38 = load %struct.token*, %struct.token** %1, align 8
  %39 = load %struct.type*, %struct.type** %2, align 8
  %40 = getelementptr inbounds %struct.type, %struct.type* %39, i64 1
  %41 = getelementptr inbounds %struct.type, %struct.type* %40, i32 0, i32 1
  %42 = load %struct.token*, %struct.token** %41, align 8
  %43 = icmp ne %struct.token* %38, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %23
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** @filename, align 8
  %47 = load %struct.token*, %struct.token** %1, align 8
  %48 = getelementptr inbounds %struct.token, %struct.token* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.token*, %struct.token** %1, align 8
  %51 = getelementptr inbounds %struct.token, %struct.token* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %49, i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.type*, %struct.type** %2, align 8
  %58 = getelementptr inbounds %struct.type, %struct.type* %57, i32 1
  store %struct.type* %58, %struct.type** %2, align 8
  %59 = load %struct.type*, %struct.type** %2, align 8
  %60 = getelementptr inbounds %struct.type, %struct.type* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TYPE_STOP_MARKER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %4, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @nr_actions, align 4
  %68 = call i32 @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local %struct.TYPE_2__* @parse_type(%struct.token**, %struct.token*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @verbose(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
