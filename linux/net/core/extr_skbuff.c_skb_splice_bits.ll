; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_splice_bits.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_splice_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.pipe_inode_info = type { i32 }
%struct.splice_pipe_desc = type { i32, i64, i32, i32*, %struct.partial_page*, %struct.page** }
%struct.partial_page = type { i32 }
%struct.page = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@sock_spd_release = common dso_local global i32 0, align 4
@nosteal_pipe_buf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_splice_bits(%struct.sk_buff* %0, %struct.sock* %1, i32 %2, %struct.pipe_inode_info* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe_inode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.splice_pipe_desc, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.pipe_inode_info* %3, %struct.pipe_inode_info** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca %struct.partial_page, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca %struct.page*, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  %26 = load i32, i32* @MAX_SKB_FRAGS, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 2
  %29 = load i32, i32* @sock_spd_release, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 3
  store i32* @nosteal_pipe_buf_ops, i32** %30, align 8
  %31 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 4
  store %struct.partial_page* %21, %struct.partial_page** %31, align 8
  %32 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 5
  store %struct.page** %24, %struct.page*** %32, align 8
  store i32 0, i32* %17, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %35 = load %struct.sock*, %struct.sock** %8, align 8
  %36 = call i32 @__skb_splice_bits(%struct.sk_buff* %33, %struct.pipe_inode_info* %34, i32* %9, i32* %11, %struct.splice_pipe_desc* %16, %struct.sock* %35)
  %37 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %42 = call i32 @splice_to_pipe(%struct.pipe_inode_info* %41, %struct.splice_pipe_desc* %16)
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %40, %6
  %44 = load i32, i32* %17, align 4
  %45 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__skb_splice_bits(%struct.sk_buff*, %struct.pipe_inode_info*, i32*, i32*, %struct.splice_pipe_desc*, %struct.sock*) #2

declare dso_local i32 @splice_to_pipe(%struct.pipe_inode_info*, %struct.splice_pipe_desc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
