; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_decode_tree_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_decode_tree_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_tree = type { i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"crush_decode_tree_bucket %p to %p\0A\00", align 1
@bad = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.crush_bucket_tree*)* @crush_decode_tree_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crush_decode_tree_bucket(i8** %0, i8* %1, %struct.crush_bucket_tree* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crush_bucket_tree*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.crush_bucket_tree* %2, %struct.crush_bucket_tree** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.crush_bucket_tree*, %struct.crush_bucket_tree** %7, align 8
  %16 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @bad, align 4
  %19 = call i32 @ceph_decode_8_safe(i8** %13, i8* %14, i32 %17, i32 %18)
  %20 = load %struct.crush_bucket_tree*, %struct.crush_bucket_tree** %7, align 8
  %21 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call i32* @kcalloc(i32 %22, i32 4, i32 %23)
  %25 = load %struct.crush_bucket_tree*, %struct.crush_bucket_tree** %7, align 8
  %26 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.crush_bucket_tree*, %struct.crush_bucket_tree** %7, align 8
  %28 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %67

34:                                               ; preds = %3
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.crush_bucket_tree*, %struct.crush_bucket_tree** %7, align 8
  %38 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @bad, align 4
  %44 = call i32 @ceph_decode_need(i8** %35, i8* %36, i32 %42, i32 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %60, %34
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.crush_bucket_tree*, %struct.crush_bucket_tree** %7, align 8
  %48 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @ceph_decode_32(i8** %52)
  %54 = load %struct.crush_bucket_tree*, %struct.crush_bucket_tree** %7, align 8
  %55 = getelementptr inbounds %struct.crush_bucket_tree, %struct.crush_bucket_tree* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %45

63:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %67

64:                                               ; No predecessors!
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %63, %31
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @dout(i8*, i8*, i8*) #1

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
