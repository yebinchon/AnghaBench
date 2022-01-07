; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_queue.c_ima_add_digest_entry.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_queue.c_ima_add_digest_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.ima_template_entry = type { i32 }
%struct.ima_queue_entry = type { i32, i32, %struct.ima_template_entry* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"OUT OF MEMORY ERROR creating queue entry\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ima_measurements = common dso_local global i32 0, align 4
@ima_htable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@binary_runtime_size = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ima_template_entry*, i32)* @ima_add_digest_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_add_digest_entry(%struct.ima_template_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ima_template_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ima_queue_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ima_template_entry* %0, %struct.ima_template_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ima_queue_entry* @kmalloc(i32 16, i32 %9)
  store %struct.ima_queue_entry* %10, %struct.ima_queue_entry** %6, align 8
  %11 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %12 = icmp eq %struct.ima_queue_entry* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.ima_template_entry*, %struct.ima_template_entry** %4, align 8
  %19 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %20 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %19, i32 0, i32 2
  store %struct.ima_template_entry* %18, %struct.ima_template_entry** %20, align 8
  %21 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %22 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %25 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %24, i32 0, i32 1
  %26 = call i32 @list_add_tail_rcu(i32* %25, i32* @ima_measurements)
  %27 = call i32 @atomic_long_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ima_htable, i32 0, i32 1))
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %17
  %31 = load %struct.ima_template_entry*, %struct.ima_template_entry** %4, align 8
  %32 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ima_hash_key(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %36 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %35, i32 0, i32 0
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ima_htable, i32 0, i32 0), align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @hlist_add_head_rcu(i32* %36, i32* %40)
  br label %42

42:                                               ; preds = %30, %17
  %43 = load i32, i32* @binary_runtime_size, align 4
  %44 = load i32, i32* @ULONG_MAX, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.ima_template_entry*, %struct.ima_template_entry** %4, align 8
  %48 = call i32 @get_binary_runtime_size(%struct.ima_template_entry* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @binary_runtime_size, align 4
  %50 = load i32, i32* @ULONG_MAX, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @binary_runtime_size, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  br label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @ULONG_MAX, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  store i32 %61, i32* @binary_runtime_size, align 4
  br label %62

62:                                               ; preds = %60, %42
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.ima_queue_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @ima_hash_key(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @get_binary_runtime_size(%struct.ima_template_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
