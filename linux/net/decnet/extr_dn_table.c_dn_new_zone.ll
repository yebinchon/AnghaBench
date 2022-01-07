; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_new_zone.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_new_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_zone = type { i32, i32, i32, %struct.dn_zone*, i32, i32 }
%struct.dn_hash = type { %struct.dn_zone**, %struct.dn_zone* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dn_fib_tables_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dn_zone* (%struct.dn_hash*, i32)* @dn_new_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dn_zone* @dn_new_zone(%struct.dn_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.dn_zone*, align 8
  %4 = alloca %struct.dn_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_zone*, align 8
  store %struct.dn_hash* %0, %struct.dn_hash** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dn_zone* @kzalloc(i32 32, i32 %8)
  store %struct.dn_zone* %9, %struct.dn_zone** %7, align 8
  %10 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %11 = icmp ne %struct.dn_zone* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.dn_zone* null, %struct.dn_zone** %3, align 8
  br label %112

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %18 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %17, i32 0, i32 0
  store i32 16, i32* %18, align 8
  %19 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %20 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %19, i32 0, i32 1
  store i32 15, i32* %20, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %23 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %25 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %28 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kcalloc(i32 %29, i32 8, i32 %30)
  %32 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %33 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %35 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %40 = call i32 @kfree(%struct.dn_zone* %39)
  store %struct.dn_zone* null, %struct.dn_zone** %3, align 8
  br label %112

41:                                               ; preds = %26
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %44 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dnet_make_mask(i32 %45)
  %47 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %48 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %65, %41
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 %52, 16
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.dn_hash*, %struct.dn_hash** %4, align 8
  %56 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %55, i32 0, i32 0
  %57 = load %struct.dn_zone**, %struct.dn_zone*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dn_zone*, %struct.dn_zone** %57, i64 %59
  %61 = load %struct.dn_zone*, %struct.dn_zone** %60, align 8
  %62 = icmp ne %struct.dn_zone* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %68

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %51

68:                                               ; preds = %63, %51
  %69 = call i32 @write_lock_bh(i32* @dn_fib_tables_lock)
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 16
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.dn_hash*, %struct.dn_hash** %4, align 8
  %74 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %73, i32 0, i32 1
  %75 = load %struct.dn_zone*, %struct.dn_zone** %74, align 8
  %76 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %77 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %76, i32 0, i32 3
  store %struct.dn_zone* %75, %struct.dn_zone** %77, align 8
  %78 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %79 = load %struct.dn_hash*, %struct.dn_hash** %4, align 8
  %80 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %79, i32 0, i32 1
  store %struct.dn_zone* %78, %struct.dn_zone** %80, align 8
  br label %102

81:                                               ; preds = %68
  %82 = load %struct.dn_hash*, %struct.dn_hash** %4, align 8
  %83 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %82, i32 0, i32 0
  %84 = load %struct.dn_zone**, %struct.dn_zone*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.dn_zone*, %struct.dn_zone** %84, i64 %86
  %88 = load %struct.dn_zone*, %struct.dn_zone** %87, align 8
  %89 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %88, i32 0, i32 3
  %90 = load %struct.dn_zone*, %struct.dn_zone** %89, align 8
  %91 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %92 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %91, i32 0, i32 3
  store %struct.dn_zone* %90, %struct.dn_zone** %92, align 8
  %93 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %94 = load %struct.dn_hash*, %struct.dn_hash** %4, align 8
  %95 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %94, i32 0, i32 0
  %96 = load %struct.dn_zone**, %struct.dn_zone*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.dn_zone*, %struct.dn_zone** %96, i64 %98
  %100 = load %struct.dn_zone*, %struct.dn_zone** %99, align 8
  %101 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %100, i32 0, i32 3
  store %struct.dn_zone* %93, %struct.dn_zone** %101, align 8
  br label %102

102:                                              ; preds = %81, %72
  %103 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  %104 = load %struct.dn_hash*, %struct.dn_hash** %4, align 8
  %105 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %104, i32 0, i32 0
  %106 = load %struct.dn_zone**, %struct.dn_zone*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.dn_zone*, %struct.dn_zone** %106, i64 %108
  store %struct.dn_zone* %103, %struct.dn_zone** %109, align 8
  %110 = call i32 @write_unlock_bh(i32* @dn_fib_tables_lock)
  %111 = load %struct.dn_zone*, %struct.dn_zone** %7, align 8
  store %struct.dn_zone* %111, %struct.dn_zone** %3, align 8
  br label %112

112:                                              ; preds = %102, %38, %12
  %113 = load %struct.dn_zone*, %struct.dn_zone** %3, align 8
  ret %struct.dn_zone* %113
}

declare dso_local %struct.dn_zone* @kzalloc(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.dn_zone*) #1

declare dso_local i32 @dnet_make_mask(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
