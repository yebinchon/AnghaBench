; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_proc_setgroups_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_proc_setgroups_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@USERNS_SETGROUPS_ALLOWED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"deny\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_setgroups_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  store %struct.user_namespace* %9, %struct.user_namespace** %5, align 8
  %10 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %11 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @READ_ONCE(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @USERNS_SETGROUPS_ALLOWED, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  ret i32 0
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
