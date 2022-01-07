; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_readpage.c_get_bio_post_read_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_readpage.c_get_bio_post_read_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_post_read_ctx = type { i32, %struct.bio* }
%struct.inode = type { i32 }
%struct.bio = type { %struct.bio_post_read_ctx* }

@STEP_DECRYPT = common dso_local global i32 0, align 4
@STEP_VERITY = common dso_local global i32 0, align 4
@bio_post_read_ctx_pool = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio_post_read_ctx* (%struct.inode*, %struct.bio*, i32)* @get_bio_post_read_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio_post_read_ctx* @get_bio_post_read_ctx(%struct.inode* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.bio_post_read_ctx*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio_post_read_ctx*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.bio_post_read_ctx* null, %struct.bio_post_read_ctx** %9, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i64 @IS_ENCRYPTED(%struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISREG(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* @STEP_DECRYPT, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %13, %3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @ext4_need_verity(%struct.inode* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @STEP_VERITY, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32, i32* @bio_post_read_ctx_pool, align 4
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call %struct.bio_post_read_ctx* @mempool_alloc(i32 %38, i32 %39)
  store %struct.bio_post_read_ctx* %40, %struct.bio_post_read_ctx** %9, align 8
  %41 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %9, align 8
  %42 = icmp ne %struct.bio_post_read_ctx* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.bio_post_read_ctx* @ERR_PTR(i32 %45)
  store %struct.bio_post_read_ctx* %46, %struct.bio_post_read_ctx** %4, align 8
  br label %59

47:                                               ; preds = %37
  %48 = load %struct.bio*, %struct.bio** %6, align 8
  %49 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %49, i32 0, i32 1
  store %struct.bio* %48, %struct.bio** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %9, align 8
  %55 = load %struct.bio*, %struct.bio** %6, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  store %struct.bio_post_read_ctx* %54, %struct.bio_post_read_ctx** %56, align 8
  br label %57

57:                                               ; preds = %47, %34
  %58 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %9, align 8
  store %struct.bio_post_read_ctx* %58, %struct.bio_post_read_ctx** %4, align 8
  br label %59

59:                                               ; preds = %57, %43
  %60 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %4, align 8
  ret %struct.bio_post_read_ctx* %60
}

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @ext4_need_verity(%struct.inode*, i32) #1

declare dso_local %struct.bio_post_read_ctx* @mempool_alloc(i32, i32) #1

declare dso_local %struct.bio_post_read_ctx* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
