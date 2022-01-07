; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_gc.c_key_gc_keytype.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_gc.c_key_gc_keytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@key_gc_dead_keytype = common dso_local global %struct.key_type* null, align 8
@KEY_GC_REAPING_KEYTYPE = common dso_local global i32 0, align 4
@key_gc_flags = common dso_local global i32 0, align 4
@KEY_GC_REAP_KEYTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@key_gc_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_gc_keytype(%struct.key_type* %0) #0 {
  %2 = alloca %struct.key_type*, align 8
  store %struct.key_type* %0, %struct.key_type** %2, align 8
  %3 = load %struct.key_type*, %struct.key_type** %2, align 8
  %4 = getelementptr inbounds %struct.key_type, %struct.key_type* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.key_type*, %struct.key_type** %2, align 8
  store %struct.key_type* %7, %struct.key_type** @key_gc_dead_keytype, align 8
  %8 = load i32, i32* @KEY_GC_REAPING_KEYTYPE, align 4
  %9 = call i32 @set_bit(i32 %8, i32* @key_gc_flags)
  %10 = call i32 (...) @smp_mb()
  %11 = load i32, i32* @KEY_GC_REAP_KEYTYPE, align 4
  %12 = call i32 @set_bit(i32 %11, i32* @key_gc_flags)
  %13 = call i32 @kdebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @schedule_work(i32* @key_gc_work)
  %15 = call i32 @kdebug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @KEY_GC_REAPING_KEYTYPE, align 4
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @wait_on_bit(i32* @key_gc_flags, i32 %16, i32 %17)
  store %struct.key_type* null, %struct.key_type** @key_gc_dead_keytype, align 8
  %19 = call i32 @kleave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @kdebug(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local i32 @kleave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
