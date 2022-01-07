; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hash.c_batadv_hash_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hash.c_batadv_hash_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hashtable = type { %struct.batadv_hashtable*, i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_hashtable* @batadv_hash_new(i32 %0) #0 {
  %2 = alloca %struct.batadv_hashtable*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.batadv_hashtable*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.batadv_hashtable* @kmalloc(i32 24, i32 %5)
  store %struct.batadv_hashtable* %6, %struct.batadv_hashtable** %4, align 8
  %7 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %8 = icmp ne %struct.batadv_hashtable* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.batadv_hashtable* null, %struct.batadv_hashtable** %2, align 8
  br label %48

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call i8* @kmalloc_array(i32 %11, i32 24, i32 %12)
  %14 = bitcast i8* %13 to %struct.batadv_hashtable*
  %15 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %16 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %15, i32 0, i32 0
  store %struct.batadv_hashtable* %14, %struct.batadv_hashtable** %16, align 8
  %17 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %18 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %17, i32 0, i32 0
  %19 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %18, align 8
  %20 = icmp ne %struct.batadv_hashtable* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  br label %45

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i8* @kmalloc_array(i32 %23, i32 1, i32 %24)
  %26 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %27 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %29 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %40

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %36 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %38 = call i32 @batadv_hash_init(%struct.batadv_hashtable* %37)
  %39 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  store %struct.batadv_hashtable* %39, %struct.batadv_hashtable** %2, align 8
  br label %48

40:                                               ; preds = %32
  %41 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %42 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %41, i32 0, i32 0
  %43 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %42, align 8
  %44 = call i32 @kfree(%struct.batadv_hashtable* %43)
  br label %45

45:                                               ; preds = %40, %21
  %46 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %4, align 8
  %47 = call i32 @kfree(%struct.batadv_hashtable* %46)
  store %struct.batadv_hashtable* null, %struct.batadv_hashtable** %2, align 8
  br label %48

48:                                               ; preds = %45, %33, %9
  %49 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %2, align 8
  ret %struct.batadv_hashtable* %49
}

declare dso_local %struct.batadv_hashtable* @kmalloc(i32, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @batadv_hash_init(%struct.batadv_hashtable*) #1

declare dso_local i32 @kfree(%struct.batadv_hashtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
