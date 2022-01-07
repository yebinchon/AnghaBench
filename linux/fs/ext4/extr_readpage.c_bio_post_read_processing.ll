; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_readpage.c_bio_post_read_processing.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_readpage.c_bio_post_read_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_post_read_ctx = type { i32, i32, i32, i32 }

@decrypt_work = common dso_local global i32 0, align 4
@verity_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_post_read_ctx*)* @bio_post_read_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_post_read_processing(%struct.bio_post_read_ctx* %0) #0 {
  %2 = alloca %struct.bio_post_read_ctx*, align 8
  store %struct.bio_post_read_ctx* %0, %struct.bio_post_read_ctx** %2, align 8
  %3 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  switch i32 %6, label %45 [
    i32 129, label %7
    i32 128, label %26
  ]

7:                                                ; preds = %1
  %8 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, undef
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %14, i32 0, i32 3
  %16 = load i32, i32* @decrypt_work, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %18, i32 0, i32 3
  %20 = call i32 @fscrypt_enqueue_decrypt_work(i32* %19)
  br label %50

21:                                               ; preds = %7
  %22 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %1, %21
  %27 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, undef
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* @verity_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %37, i32 0, i32 3
  %39 = call i32 @fsverity_enqueue_verify_work(i32* %38)
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %1, %40
  %46 = load %struct.bio_post_read_ctx*, %struct.bio_post_read_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.bio_post_read_ctx, %struct.bio_post_read_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__read_end_io(i32 %48)
  br label %50

50:                                               ; preds = %13, %32, %45
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @fscrypt_enqueue_decrypt_work(i32*) #1

declare dso_local i32 @fsverity_enqueue_verify_work(i32*) #1

declare dso_local i32 @__read_end_io(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
