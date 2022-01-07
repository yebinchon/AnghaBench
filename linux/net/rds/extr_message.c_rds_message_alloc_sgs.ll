; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_alloc_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_alloc_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.rds_message = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"rds: alloc sgs failed! nents <= 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"rds: alloc sgs failed! total %d used %d nents %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scatterlist* @rds_message_alloc_sgs(%struct.rds_message* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.rds_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  store %struct.rds_message* %0, %struct.rds_message** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %11 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %10, i64 1
  %12 = bitcast %struct.rds_message* %11 to %struct.scatterlist*
  store %struct.scatterlist* %12, %struct.scatterlist** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %66

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %66

28:                                               ; preds = %20
  %29 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %30 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %35 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %40 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %43 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %66

50:                                               ; preds = %28
  %51 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %52 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %53 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i64 %55
  store %struct.scatterlist* %56, %struct.scatterlist** %9, align 8
  %57 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @sg_init_table(%struct.scatterlist* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %62 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %65, %struct.scatterlist** %4, align 8
  br label %66

66:                                               ; preds = %50, %38, %23, %19
  %67 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  ret %struct.scatterlist* %67
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
