; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_decode_straw2_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_decode_straw2_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_straw2 = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"crush_decode_straw2_bucket %p to %p\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.crush_bucket_straw2*)* @crush_decode_straw2_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crush_decode_straw2_bucket(i8** %0, i8* %1, %struct.crush_bucket_straw2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crush_bucket_straw2*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.crush_bucket_straw2* %2, %struct.crush_bucket_straw2** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %7, align 8
  %14 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call i32* @kcalloc(i32 %16, i32 4, i32 %17)
  %19 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %7, align 8
  %20 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %7, align 8
  %22 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %7, align 8
  %32 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @bad, align 4
  %39 = call i32 @ceph_decode_need(i8** %29, i8* %30, i32 %37, i32 %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %56, %28
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %7, align 8
  %43 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load i8**, i8*** %5, align 8
  %49 = call i32 @ceph_decode_32(i8** %48)
  %50 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %7, align 8
  %51 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %40

59:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %63

60:                                               ; No predecessors!
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %59, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @dout(i8*, i8*, i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
