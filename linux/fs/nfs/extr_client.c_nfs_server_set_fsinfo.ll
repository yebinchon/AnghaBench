; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_server_set_fsinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_server_set_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.nfs_fsinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NFS_MAX_FILE_IO_SIZE = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NFS_MAX_READDIR_PAGES = common dso_local global i32 0, align 4
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, %struct.nfs_fsinfo*)* @nfs_server_set_fsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_server_set_fsinfo(%struct.nfs_server* %0, %struct.nfs_fsinfo* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_fsinfo*, align 8
  %5 = alloca i64, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs_fsinfo* %1, %struct.nfs_fsinfo** %4, align 8
  %6 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @nfs_block_size(i32 %13, i32* null)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @nfs_block_size(i32 %26, i32* null)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %33 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 512
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %46 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @nfs_block_size(i32 %47, i32* null)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %44, %36, %31
  %53 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %54 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 512
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %59 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %62 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @nfs_block_size(i32 %68, i32* null)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %72 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %57, %52
  %74 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %75 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @rpc_max_payload(i32 %76)
  %78 = call i8* @nfs_block_size(i32 %77, i32* null)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %5, align 8
  %80 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %5, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load i64, i64* %5, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %90 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %73
  %92 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %93 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %98 = icmp ugt i8* %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %103 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %91
  %105 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %106 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = add nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* @PAGE_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %114 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %116 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %5, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %104
  %122 = load i64, i64* %5, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %125 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %104
  %127 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %128 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %133 = icmp ugt i8* %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load i8*, i8** @NFS_MAX_FILE_IO_SIZE, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %138 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %126
  %140 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %141 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = add nsw i32 %142, %143
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* @PAGE_SHIFT, align 4
  %147 = ashr i32 %145, %146
  %148 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %149 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %151 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @nfs_block_bits(i32 %152, i32* null)
  %154 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %155 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %154, i32 0, i32 14
  store i32 %153, i32* %155, align 8
  %156 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %157 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @nfs_block_size(i32 %158, i32* null)
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %162 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %164 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = load i32, i32* @NFS_MAX_READDIR_PAGES, align 4
  %168 = mul nsw i32 %166, %167
  %169 = icmp sgt i32 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %139
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = load i32, i32* @NFS_MAX_READDIR_PAGES, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %175 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %170, %139
  %177 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %178 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %181 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %179, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %186 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %189 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %184, %176
  %191 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %192 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %190
  %198 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %199 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %198, i32 0, i32 12
  store i64 0, i64* %199, align 8
  %200 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %201 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %200, i32 0, i32 13
  store i64 0, i64* %201, align 8
  %202 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %203 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %202, i32 0, i32 10
  store i64 0, i64* %203, align 8
  %204 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %205 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %204, i32 0, i32 11
  store i64 0, i64* %205, align 8
  br label %206

206:                                              ; preds = %197, %190
  %207 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %208 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %211 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %210, i32 0, i32 9
  store i32 %209, i32* %211, align 4
  %212 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %213 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %216 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %215, i32 0, i32 8
  store i32 %214, i32* %216, align 8
  %217 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %4, align 8
  %218 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %221 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 4
  %222 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %223 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %226 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 100
  %229 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %230 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 100
  %233 = call i32 @rpc_setbufsize(i32 %224, i32 %228, i32 %232)
  ret void
}

declare dso_local i8* @nfs_block_size(i32, i32*) #1

declare dso_local i32 @rpc_max_payload(i32) #1

declare dso_local i32 @nfs_block_bits(i32, i32*) #1

declare dso_local i32 @rpc_setbufsize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
