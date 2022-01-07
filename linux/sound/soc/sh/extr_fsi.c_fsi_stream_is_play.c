
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_stream {int dummy; } ;
struct fsi_priv {struct fsi_stream playback; } ;



__attribute__((used)) static inline int fsi_stream_is_play(struct fsi_priv *fsi,
         struct fsi_stream *io)
{
 return &fsi->playback == io;
}
