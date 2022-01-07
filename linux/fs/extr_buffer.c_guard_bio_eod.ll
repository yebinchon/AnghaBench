; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_guard_bio_eod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_guard_bio_eod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bio_vec = type { i32, i32, i32 }
%struct.hd_struct = type { i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guard_bio_eod(i32 %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hd_struct*, align 8
  %9 = alloca %struct.bio_vec, align 4
  store i32 %0, i32* %3, align 4
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call %struct.bio_vec* @bio_last_bvec_all(%struct.bio* %10)
  store %struct.bio_vec* %11, %struct.bio_vec** %6, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hd_struct* @__disk_get_part(i32 %15, i32 %18)
  store %struct.hd_struct* %19, %struct.hd_struct** %8, align 8
  %20 = load %struct.hd_struct*, %struct.hd_struct** %8, align 8
  %21 = icmp ne %struct.hd_struct* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.hd_struct*, %struct.hd_struct** %8, align 8
  %24 = call i32 @part_nr_sects_read(%struct.hd_struct* %23)
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_capacity(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %105

35:                                               ; preds = %30
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %105

46:                                               ; preds = %35
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 9
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %105

64:                                               ; preds = %46
  %65 = load %struct.bio*, %struct.bio** %4, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 %69, 9
  %71 = sub nsw i32 %68, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %74 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %105

78:                                               ; preds = %64
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.bio*, %struct.bio** %4, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %87 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @REQ_OP_READ, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %78
  %94 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %95 = call i32 @mp_bvec_last_segment(%struct.bio_vec* %94, %struct.bio_vec* %9)
  %96 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %99, %101
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @zero_user(i32 %97, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %34, %45, %63, %77, %93, %78
  ret void
}

declare dso_local %struct.bio_vec* @bio_last_bvec_all(%struct.bio*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hd_struct* @__disk_get_part(i32, i32) #1

declare dso_local i32 @part_nr_sects_read(%struct.hd_struct*) #1

declare dso_local i32 @get_capacity(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mp_bvec_last_segment(%struct.bio_vec*, %struct.bio_vec*) #1

declare dso_local i32 @zero_user(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
