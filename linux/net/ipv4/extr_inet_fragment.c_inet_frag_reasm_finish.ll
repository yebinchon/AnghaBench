; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_reasm_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_reasm_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i64, i32, i32*, %struct.sk_buff*, i64, i32, i32*, %struct.rb_node, i32, i64 }
%struct.rb_node = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }

@CHECKSUM_NONE = common dso_local global i64 0, align 8
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frag_reasm_finish(%struct.inet_frag_queue* %0, %struct.sk_buff* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.inet_frag_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rb_node*, align 8
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.sk_buff**
  store %struct.sk_buff** %18, %struct.sk_buff*** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i64 @skb_network_header(%struct.sk_buff* %23)
  %25 = sub nsw i64 %22, %24
  %26 = call i32 @skb_push(%struct.sk_buff* %19, i64 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_2__* @FRAG_CB(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 8
  %33 = call %struct.rb_node* @rb_next(%struct.rb_node* %32)
  store %struct.rb_node* %33, %struct.rb_node** %10, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 8
  %36 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %37 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %36, i32 0, i32 2
  %38 = call i32 @rb_erase(%struct.rb_node* %35, i32* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %154, %4
  %43 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %44 = icmp ne %struct.rb_node* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %155

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %139, %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %141

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = call %struct.TYPE_2__* @FRAG_CB(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %13, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %54
  %72 = load i64, i64* @CHECKSUM_NONE, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %92

75:                                               ; preds = %54
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @csum_add(i32 %84, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %81, %75
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %98 = call i64 @skb_try_coalesce(%struct.sk_buff* %96, %struct.sk_buff* %97, i32* %14, i32* %15)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @kfree_skb_partial(%struct.sk_buff* %101, i32 %102)
  br label %139

104:                                              ; preds = %95, %92
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 3
  store i32* null, i32** %106, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 8
  %109 = call i32 @memset(%struct.rb_node* %108, i32 0, i32 4)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 7
  store i32* null, i32** %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %135, %struct.sk_buff** %136, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 4
  store %struct.sk_buff** %138, %struct.sk_buff*** %9, align 8
  br label %139

139:                                              ; preds = %104, %100
  %140 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %140, %struct.sk_buff** %11, align 8
  br label %51

141:                                              ; preds = %51
  %142 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %143 = icmp ne %struct.rb_node* %142, null
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %146 = call %struct.rb_node* @rb_next(%struct.rb_node* %145)
  store %struct.rb_node* %146, %struct.rb_node** %16, align 8
  %147 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %148 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %147)
  store %struct.sk_buff* %148, %struct.sk_buff** %11, align 8
  %149 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %150 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %151 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %150, i32 0, i32 2
  %152 = call i32 @rb_erase(%struct.rb_node* %149, i32* %151)
  %153 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  store %struct.rb_node* %153, %struct.rb_node** %10, align 8
  br label %154

154:                                              ; preds = %144, %141
  br label %42

155:                                              ; preds = %48
  %156 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %157 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @sub_frag_mem_limit(i32 %158, i32 %159)
  %161 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 3
  store i32* null, i32** %165, align 8
  %166 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %167 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  ret void
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @FRAG_CB(%struct.sk_buff*) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @rb_erase(%struct.rb_node*, i32*) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i64 @skb_try_coalesce(%struct.sk_buff*, %struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @kfree_skb_partial(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.rb_node*, i32, i32) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local i32 @sub_frag_mem_limit(i32, i32) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
